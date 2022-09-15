local system = sys.getSystemTable()
system.core.event.initEvent()
system.core.peripheral.mouse.init()
--system.core.event.initEvent()
while true do
    local event = {coroutine.yield()}
    print(system.core.peripheral.mouse.settings.currentScroll)
    if event[1] == "terminate" then
        os.shutdown()
    elseif event[1] ~= "mouse_scroll" then
        print("event "..event[1].." was received")
    end
end
