
local F = require("F")

local UEHelpers = require("UEHelpers")


local function ExamplePrintOut()
	print("Example print out")
end

local prefix = "Example"
local suffix = "out"
local full_print = F'{prefix} print {suffix}'

RegisterKeyBind(Key.F7, ExamplePrintOut)
