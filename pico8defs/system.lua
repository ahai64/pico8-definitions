---@meta

---Load a cartridge
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#LOAD)
---@param filename string
---@param breadcrumb string?
---@param param_str string?
function load(filename, breadcrumb, param_str) end

---Save a cartridge
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SAVE)
---@param filename string
function save(filename) end

---Open the carts folder in the host operating system.
---
---FOLDER takes an optional parameter to open other host directories: BACKUPS | DESKTOP | CONFIG | BBS
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FOLDER)
---@param directory string?
function folder(directory) end

---List .p8 and .p8.png files in given directory (folder), relative to the current directory.
---
---Items that are directories end in a slash (e.g. "foo/").
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#LS)
---@param directory string?
---@return string[]|nil
function ls(directory) end

---Run from the start of the program.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RUN)
---@param param_str string?
function run(param_str) end

---Stop the cart and optionally print a message.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#STOP)
---@param message any?
function stop(message) end

---Resume the program.
---
---Use R for short.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RESUME)
function resume() end

---If CONDITION is false, stop the program and print MESSAGE if it is given. This can be useful for debugging cartridges, by ASSERT()'ing that things that you expect to be true are indeed true.
---```
---ASSERT(ADDR >= 0 AND ADDR <= 0x7FFF, "OUT OF RANGE")
---POKE(ADDR, 42) -- THE MEMORY ADDRESS IS OK, FOR SURE!
---```
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#ASSERT)
---@param condition any
---@param message any?
function assert(condition, message) end

---Reboot the machine Useful for starting a new project
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#REBOOT)
function reboot() end

---Reset the values in RAM from 0x5f00..0x5f7f to their default values. This includes the palette, camera position, clipping and fill pattern. If you get lost at the command prompt because the draw state makes viewing text impossible, try typing RESET! It can also be called from a running program.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RESET)
function reset() end

---Print out some information about the cartridge: Code size, tokens, compressed size
---
---Also displayed:
---- UNSAVED CHANGES   When the cartridge in memory differs to the one on disk
---- EXTERNAL CHANGES  When the cartridge on disk has changed since it was loaded
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#INFO)
function info() end

---Flip the back buffer to screen and wait for next frame.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FLIP)
function flip() end

---Print a string to the host operating system's console for debugging.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PRINTH)
---@param str any
---@param filename string? -- If filename is set, append the string to a file on the host operating system
---@param overwrite boolean? -- Setting OVERWRITE to true causes that file to be overwritten rather than appended.
---@param save_to_desktop boolean? -- Setting SAVE_TO_DESKTOP to true saves to the desktop instead of the current path.
function printh(str, filename, overwrite, save_to_desktop) end

---Returns the number of seconds elapsed since the cartridge was run.
---
---This is not the real-world time, but is calculated by counting the number of times _UPDATE or @_UPDATE60 is called.
---
---Multiple calls of TIME() from the same frame return the same result.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#TIME)
---@return number
function time() end

---Returns the number of seconds elapsed since the cartridge was run.
---
---This is not the real-world time, but is calculated by counting the number of times _UPDATE or @_UPDATE60 is called.
---
---Multiple calls of TIME() from the same frame return the same result.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#TIME)
---@return number
function t() end

---Get system status where X is:
---```
---0   Memory usage (0..2048, KiB)
---1   CPU used since last flip (1.0 == 100% CPU)
---2   System CPU (work done in native/unseen code) // wiki
---4   Clipboard contents (after user has pressed CTRL-V)
---5   PICO-8 version ID (e.g. 33 == 0.2.3) // wiki
---6   Parameter string
---7   Current framerate
---8   Target framerate (30 or 60) // wiki
---9   PICO-8 application framerate // wiki
---11  Number of displays // wiki
---
---12..15  Pause menu position: x0, y0, x1, y1
---
---16..26  Legacy audio state (same as 46..56, lower precision)
---
---28  stat(28, scan_code) -> true when that SDL scancode is pressed // wiki
---
---30  (Boolean) True when a keypress is available
---31  (String) character returned by keyboard
---32  Mouse X
---33  Mouse Y
---34  Mouse buttons (bitfield: 0x1 left, 0x2 right, 0x4 middle)
---35  Horizontal mouse wheel / two-finger swipe (pixels) // wiki
---36  Mouse wheel event (-1 roll down, 0 no roll, 1 roll up)
---37  Mouse acceleration delta // wiki
---38  Relative x movement (in host desktop pixels) -- requires flag 0x4
---39  Relative y movement (in host desktop pixels) -- requires flag 0x4
---
---46..49  Index of currently playing SFX on channels 0..3 (-1 when silent)
---50..53  Note number (0..31) on channel 0..3
---54      Currently playing pattern index
---55      Total patterns played
---56      Ticks played on current pattern
---57      (Boolean) TRUE when music is playing
---
---80..85  UTC time: year, month, day, hour, minute, second
---90..95  Local time
---
---99   Raw Lua memory value (stat(0) without garbage collection)
---
---100  Current breadcrumb label, or nil
---101  Current BBS cart id (BBS carts only)
---102  Site hostname (e.g. "www.lexaloffle.com"); 0 for local carts
---
---108  PCM sample bytes currently buffered (0..2047) // wiki
---109  PICO-8 audio buffer size / 4 (see serial channel 0x808)
---110  Returns true when in frame-by-frame mode
---111  Like 109, but returns a higher value on web to overfill audio and reduce crackle
---
---120  (Boolean) TRUE when dropped file data is available (serial channel 0x800)
---121  (Boolean) TRUE when dropped image data is available (serial channel 0x802)
---124  Current working directory
---```
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#STAT)
---@param x number
---@param y number? scan code, only for stat(28)
---@return any
function stat(x, y) end

---Special system command, where CMD_STR is a string:
---```
---"pause"         request the pause menu be opened
---"reset"         request a cart reset
---"go_back"       return to the previous cart if there is one
---"label"         set cart label
---"screen"        save a screenshot
---"rec"           set video start point
---"rec_frames"    set video start point in frames mode
---"video"         save a .gif to desktop
---"audio_rec"     start recording audio
---"audio_end"     save recorded audio to desktop (no supported from web)
---"shutdown"      quit cartridge (from exported binary)
---"folder"        open current working folder on the host operating system
---"set_filename"  set the filename for screenshots / gifs / audio recordings
---"set_title"     set the host window title
---```
---
---Some commands have optional number parameters:
---
---"video" and "screen": P1: an integer scaling factor that overrides the system setting. P2: when > 0, save to the current folder instead of to desktop
---
---"audio_end" P1: when > 0, save to the current folder instead of to desktop
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#EXTCMD)
---@param cmd_str string
---@param p1 number?
---@param p2 number?
function extcmd(cmd_str, p1, p2) end

--Exists in the changelog but is not included in the manual.

---List files. Alias of LS().
---@param directory string?
---@return string[]|nil
function dir(directory) end

---Print help text for the current context or given topic.
---@param topic string?
function help(topic) end

---Import spritesheet / sfx data from a file,
---e.g. import("blah.png") or import("blah%d.wav")
---@param filename string
function import(filename) end

---Export spritesheet / sfx data to a file,
---e.g. export("blah.png") or export("blah%d.wav")
---Returns false on failure.
---@param filename string
---@return boolean?
function export(filename) end
