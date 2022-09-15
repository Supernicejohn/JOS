
require("tokc")

function lexFile(path)
    local file = fs.open(path,"r")
    if not file then
        error("file could not be opened")
    end
    
end
