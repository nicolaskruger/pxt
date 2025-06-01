local api = {}

-- @class Pxt
-- @field key string
-- @field color string

-- @param line string
-- @return Pxt
function api.pxt(line)
	local key, color = string.match(line, "(%w)=(%w+)")
	if key == nil or color == nil then
		return nil
	end

	return {
		key,
		color,
	}
end

return api
