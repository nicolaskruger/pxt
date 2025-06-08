local api = {}

-- @class Pxt
-- @field key string
-- @field color string

-- @param line string
-- @return Pxt
function api.pxt(line)
	local function pattern()
		return string.match(line, "(%w)=(%w+)")
	end
	if ~pattern() then
		return nil
	end
	local key, color = pattern()
	if key == nil or color == nil then
		return nil
	end

	return {
		key,
		color,
	}
end

return api
