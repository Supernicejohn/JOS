while true do
    local event = {coroutine.yield()}
    if event[1] == "terminate" then
        os.shutdown()
    else
        print("event "..event[1].." was received")
    end
end
