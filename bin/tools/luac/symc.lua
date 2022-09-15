
symtable = {}
symtable.symbols = {}

symtable.isSymbol = function(str)
    if symtable.symbols[str] then
        return true
    end
end
symtable.addSymbol = function(str, typ, val)
    symtable.symbol[str] = {type = typ, value = val}
end
symtable.getType = function(str)
    return symtable.symbol[str]
end
