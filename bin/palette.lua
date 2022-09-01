local args = {...}

if #args > 0 then
    -- no gui mode, pass colors by args
end
local RED, GREEN, BLUE = 1,2,3

term.setBackgroundColor(colors.lightGray)
term.setTextColor(colors.green)
local colorTable = {}
for i=0,15 do
    local index = math.pow(2,i)
    colorTable[index] = {term.getPaletteColor(index)}
end

local 
