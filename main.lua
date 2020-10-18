local m = 2
local t = 0
while true do
    local ft = os.date("%b%d-(%Y) - %H_%M_%S")
    t = t + 1
    if t > m*(60*60) then savestate.save("backup ".. ft .. ".state") t = 0 end
    emu.frameadvance()
end