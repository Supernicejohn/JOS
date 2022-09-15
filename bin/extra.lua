

local myTbl = {
    {name = "hi", onclick = function() print("hi") end},
    {name = "tbl", options = {
        {name = "hello", onclick = function() print("hello") end},
        {name = "heya", onclick = function() print("heya") end}
    }
}


sys.drawOptionsWindow(1,1,20,10,myTbl)


