local api = require("pxt.pxt_api")

local function expectedInput()
	print("expectedInput")
	local data = api.pxt("@=#ffffff")
	if data ~= nil and data.key ~= "@" then
		return "\terro on key"
	end
	if data ~= nil and data.value ~= "#ffffff" then
		return "\terro on key"
	end
	return "\tsuccess"
end

local function emptyString()
	print("emptyString")
	local data = api.pxt("")
	if data ~= nil then
		return "\terro"
	end
	return "\tsuccess"
end

local function nilInput()
	print("nilInput")
	local data = api.pxt(nil)
	if data ~= nil then
		return "\terro"
	end
	return "\tsuccess"
end

print(expectedInput())
print(emptyString())
print(nilInput())
