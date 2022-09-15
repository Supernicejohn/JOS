-- compiling basic C into Lua
-- known inaccuracies: all Lua numbers are floating point values,
-- this will of course raise issues if UB occurs, or similar operations
-- that would be invalid in real C, but could compile and work with Lua.

local args = {...}
-- TODO: parse all possible args

local state = {}

local lexer = require("lexc.lua")

