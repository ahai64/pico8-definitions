---@meta

---Play sfx N (0..63) on CHANNEL (0..3) from note OFFSET (0..31 in notes) for LENGTH notes.
---
---Negative CHANNEL values have special meanings:
--- CHANNEL -1: (default) automatically choose a channel that is not being used
--- CHANNEL -2: stop the given sound from playing on any channel
---
---N can be a command for the given CHANNEL (or all channels when CHANNEL < 0):
--- N -1: stop the given sound from playing
--- N -2: release the given sound from looping
---
---Returns the channel index it was played on.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SFX)
---@param n number sfx index 0..63, or -1/-2 as a command
---@param channel number? 0..3, or -1/-2 for special behaviour
---@param offset number?
---@param length number?
---@return number channel index the sfx was played on
function sfx(n, channel, offset, length) end

---Play music starting from pattern N (0..63)
---
---N -1 to stop music
---
---FADE_LEN is in ms (default: 0). e.g. MUSIC(0, 1000) fades pattern 0 in over 1 second.
---
---CHANNEL_MASK specifies which channels to reserve for music only.
---e.g. to play only on channels 0..2: MUSIC(0, nil, 7) -- 1 | 2 | 4
---Reserved channels can still play sfx when the channel index is explicitly requested by SFX().
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MUSIC)
---@param n number 0..63 pattern, -1 to stop music
---@param fade_len number? fade time in ms, default 0
---@param channel_mask bitfield? bitfield of channels reserved for music only
function music(n, fade_len, channel_mask) end
