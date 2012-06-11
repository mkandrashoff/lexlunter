local lxsh = require('lxsh')

local file = io.open(filename)

assert(file, 'Please enter a valid filename')

local lines = file.read()

local nativeVars = {"LUA_PATH", "_G", "_LOADED", "_TRACEBACK", "_VERSION", "__pow", "arg", "assert", "collectgarbage", "coroutine", "debug", "dofile", "error",
"gcinfo", "getfenv", "getmetatable", "io", "ipairs", "loadfile",
"loadlib", "loadstring", "math", "newproxy", "next", "os", "pairs",
"pcall", "print", "rawequal", "rawget", "rawset", "require",
"setfenv", "setmetatable", "string", "table", "tonumber", "tostring",
"type", "unpack", "xpcall"}

local parsed = lxsh.lexers.lua.gmatch(lines, {join_identifiers = true})



