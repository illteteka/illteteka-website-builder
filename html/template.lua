local template = {}

template.html = ""

local file = io.open("html/template.html", "rb")
local i

for i in file:lines() do
	template.html = template.html .. i
end
file:close()

return template