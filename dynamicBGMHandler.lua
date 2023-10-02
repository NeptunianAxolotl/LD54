-- alternate custom music handler for dynamic BGM
local api = {}
--Samples are not cut to loop - they are to execute once simultaneously, while the next set are cued on the opposite bank.
--Bank cutover is at exactly 14.4 seconds (6 bars * 3 beats per bar * 0.8 seconds per beat at 75 BPM).
-- At bank cutover, all ten tracks on the new bank are to start simultaneously.  The samples are all slightly longer so that reverb tails blend together seamlessly.
local loopTime = 14.4
local remainingTime = 0
-- Per-track volumes between all banks are identical.

-- THE INDEXING ON THIS LIST IS CRITICAL TO THE REST OF THE FILE
local musicPaths = {
-- Track list:
-- 1. High woodwinds (oboe & cor anglais)
"sounds/files/stems/High Double Reeds/reeds-",
-- 2. Bassoons
"sounds/files/stems/Bassoons/bassoon-",
-- 3. Guitar (Harp)
"sounds/files/stems/Harp/harp-",
-- 4. Descant Recorder
"sounds/files/stems/Recorders/Descant/descant-recorder-",
-- 5. Alto Recorder
"sounds/files/stems/Recorders/Alto/alto-recorder-",
-- 6. Tenor & Bass Recorder
"sounds/files/stems/Recorders/Tenor and Bass/tenor-bass-recorder-",
-- 7. Snare Drum
"sounds/files/stems/Percussion/snare-",
-- 8. Tambourine
"sounds/files/stems/Percussion/tambourine-",
-- 9. French Horn
"sounds/files/stems/French Horn/french horn-",
-- 10. Trumpet
"sounds/files/stems/Trumpet/trumpet-"}

local musicSuffixes = {
    "all-others","hymnal","solo"
  }
  
  local musicExtn = ".ogg"
  
  -- fading interpolation:
  -- musicFadeRequest[trackNumber][1] = target volume
  -- musicFadeRequest[trackNumber][2] = time (s) until this volume to be achieved
  -- musicFadeRequest[trackNumber][3] = current volume
  -- INTENTIONALLY GLOBAL
musicFadeRequest = {
  {1,0,1}, -- Bassoons
  {1,0,1},
  {1,0,1},
  {1,0,1},
  {1,0,1}, -- Bass and Tenor Recorder
  {1,0,1}, -- Snare Drum (NOT WORKING)
  {1,0,1}, -- Snare Drum (NOT WORKING)
  {1,0,1}, -- Tambourine
  {1,0,1}, -- Horn
  {1,0,1}  -- Trumpet
  }

-- All tracks have an "all-others" track, and possibly a RIPIENO track, a SOLO track and a HYMNAL track.

local musicBankRipieno = {}
local musicSource = nil
for i=1,#musicPaths do
  if love.filesystem.getInfo(musicPaths[i].."ripieno.ogg") ~= nil then
  musicSource = love.audio.newSource(musicPaths[i].."ripieno.ogg","stream")
  else
   musicSource = love.audio.newSource(musicPaths[i].."all-others.ogg","stream")
  end
  table.insert(musicBankRipieno,musicSource)
end

musicSource = nil

local musicBankHymnal = {}
for i=1,#musicPaths do
  if love.filesystem.getInfo(musicPaths[i].."hymnal.ogg") ~= nil then
  musicSource = love.audio.newSource(musicPaths[i].."hymnal.ogg","stream")
  else
   musicSource = love.audio.newSource(musicPaths[i].."all-others.ogg","stream")
  end
  table.insert(musicBankHymnal,musicSource)
end

musicSource = nil

local musicBankSolo = {}
for i =1,#musicPaths do
  if love.filesystem.getInfo(musicPaths[i].."solo.ogg") ~= nil then
  musicSource = love.audio.newSource(musicPaths[i].."solo.ogg","stream")
  else
   musicSource = love.audio.newSource(musicPaths[i].."all-others.ogg","stream")
  end
  table.insert(musicBankSolo,musicSource)
end

musicSource = nil

local musicBankOthers = {}
for i =1,#musicPaths do
  table.insert(musicBankOthers,love.audio.newSource(musicPaths[i].."all-others.ogg","stream"))
end

print(#musicBankRipieno,#musicBankHymnal,#musicBankSolo,#musicBankOthers)

-- The following instruments have SOLOs (they can perform an alternate melody during SOLO phase):

local soloWeights = {
  -- 1. High woodwinds (oboe & cor anglais)
  3,
  -- 4/5. Descant and Alto recorder jointly
  4,
  -- 9/10. French Horn and Trumpet jointly
  3,
  -- Another quasi-solo phase exists called HYMNAL, however ALL instruments play alternate samples during this phase.
  1
}

-- Defines which track(s) need to be overriden by the solo bank in the solo phase
local soloMaps = {
  -- 1. High woodwinds (oboe & cor anglais)
  {1},
  -- 4/5. Descant and Alto recorder jointly
  {4,5},
  -- 9/10. French Horn and Trumpet jointly
  {9,10},
  -- Another quasi-solo phase exists called HYMNAL, however ALL instruments play alternate samples during this phase.
  {}
}

function selectFromWeights(weights)
    local sum = 0
    for i=1,#weights do
     sum = sum + weights[i]   
    end
    
    local num = math.random(0,sum)
    
    local runningTotal = 0
    
    for i=1,#weights do
      if num >= runningTotal and num < runningTotal + weights[i] then
        return i
      end
    end
    return -1 -- should be impossible!
end

-- Song phase is:
-- 1. RIPIENO (chorus)
-- 2. Either a SOLO (of an instrument whose volume is nonzero) or HYMNAL (if any recorder's volume is nonzero), selected by weighted chance
-- 
-- This loops (so ripieno is played between everything else).

local ripienoNext = true
local nextPhase = nil
local activeBank = nil

function api.Update(dt)
  remainingTime = remainingTime - dt
  
  -- Update the crossfades table.
  for i=1,#musicFadeRequest do
    if musicFadeRequest[i][2] == 0 then
      musicFadeRequest[i][3] = musicFadeRequest[i][1]
    else
      musicFadeRequest[i][3] = musicFadeRequest[i][3] - (musicFadeRequest[i][3] - musicFadeRequest[i][1] / musicFadeRequest[i][2]) * dt
    end
  end
  
  -- Determine if we are at bank cutover time.
  if(remainingTime <= 0) then
    remainingTime = loopTime -- Reset the loop timer.
    if(ripienoNext) then
      -- Unswap any solo tracks.
      if(nextPhase ~= nil) then
        swapTracksBetweenBanks(musicBankSolo,musicBankOthers,soloMaps[nextPhase])
      end
      
      -- Determine the next solo phase based on current weights.
      nextPhase = selectFromWeights(soloWeights)
      ripienoNext = false
      -- Activate ripieno.
      activeBank = musicBankRipieno
    else
      ripienoNext = true
      -- Swap tracks between the solo and other banks.
      swapTracksBetweenBanks(musicBankSolo,musicBankOthers,soloMaps[nextPhase])
      -- If the bank to be played is hymnal, play that.
      if (nextPhase == 4) then activeBank = musicBankHymnal
      else
        -- Activate Others (with the solo tracks swapped in).
        activeBank = musicBankOthers
      end
    end
 
  
    -- Start playing the active tracks.
    for i=1,#activeBank do
      activeBank[i]:setVolume(musicFadeRequest[i][3])
      activeBank[i]:play()
    end
  end
end

--
function swapTracksBetweenBanks(bankA,bankB,soloMap)
  if(soloMap ~= nil) then
        for i=1,#soloMap do
          local sourceCopy = bankA[soloMap[i]]
          bankA[soloMap[i]]  = bankB[soloMap[i]]
          bankB[soloMap[i]] = sourceCopy
        end
      end
  end
  
return api