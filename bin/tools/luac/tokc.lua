
require("symc")
tokenizer = {}

tokenizer.tokens = {
    ">=",
    "<=",
    "==",
    "!=",
    ">>",
    "<<",
    "->",
    "!",
    "%",
    "-",
    "+",
    "/",
    "*",
    "=",
    "(",
    ")",
    "[",
    "]",
    "{",
    "}",
    "^",
    ",",
    ".",
    ";"
}
tokenizer.keywords = {
    "if" = 100,
    "else",
    "for",
    "while",
    "break",
    "switch",
    "case",
    "continue",
    "default",
    "enum",
    "struct",
    "do",
    "return",
    "union"
}
tokenizer.types = {
    "static" = 200,
    "extern",
    "volatile",
    "signed",
    "unsigned",
    "int",
    "long",
    "short",
    "char",
    "float",
    "double",
    "void",
    "register" -- TODO: make this do nothing, as sometimes is true even in C.
}
tokenizer.macroLikes = {
    "typedef" = 1000,
    "sizeof",
}
tokenizer.values = {
    "string" = 1100, -- the immediate string, during compilation
    "number"
}
tokenizer.getObject = function(strin)
    
    for i=1,256 do -- max token length
        local str = strin:sub(1,i)
        local isToken = tokenizer.isToken(str)
        local inKeyword = tokenizer.isKeyword(str)
        local isType = tokenizer.isType(str)
        local isMacro = tokenizer.isMacro(str)
        local isValue = tokenizer.isValue(str)
        local isSymbol = symtable.isSymbol(str)
        if isToken then
            return isToken
        end
        if isKeyword then
            return isKeyword
        end
        if isType then
            return isType
        end
        if isMacro then
            return isMacro
        end
        if isValue then
            return isValue
        end
        if isSymbol then
            return isSymbol
        end
    end
end








