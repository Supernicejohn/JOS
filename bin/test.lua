local win = sys.requestWindow(10,1,20,20)
local t = win.getTerm()
t.write("window!")
while true do
    local e = {coroutine.yield()}
    --win[#win+1] = sys.requestWindow(math.random(1,30),math.random(1,30),
        --math.random(20,40),math.random(20,30))
    --t = win[#win].getTerm()
    print(e[1])
end
