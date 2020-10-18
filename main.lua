local minutes = 2
local t = 0
local ft_c = os.date("%b%d-(%Y) - %H_%M_%S")
savestate.save("backup ".. ft_c .. ".state")
while true do
    local ft = os.date("%b%d-(%Y) - %H_%M_%S")
    t = t + 1
    if t > minutes*(60*60) then savestate.save("backup ".. ft .. ".state") t = 0 end
    emu.frameadvance()
end