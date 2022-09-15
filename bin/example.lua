local randcolor = colors.white
for i=1,math.random(1,15) do
    randcolor = randcolor*2
end
term.setBackgroundColor(randcolor)
term.setTextColor(colors.white)
term.clear()
while true do
    local event = {os.pullEvent()}
    if event[1] == "terminate" then
        break
    else
        print("example got event: "..event[1])
    end
end
print("exited example program!")
