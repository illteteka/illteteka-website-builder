pages = require "pages"
generate = require "generate"

_URL = "https://illteteka.com/"

_SLASH = package.config:sub(1,1)
_OS = "win"
if _SLASH == "/" then
	_OS = "mac"
end
_YEAR = os.date("%Y")
_DATE = " - " .. _YEAR
if _YEAR == "2021" then
	_DATE = ""
end

function init()
	-- Create navbar
	pages.addNavBar("Games", "index", false)
	pages.addNavBar("Music", "music", false)
	pages.addNavBar("Secrets", "secrets", false)
	pages.addNavBar("GitHub", "http://github.com/illteteka", true)
	pages.addNavBar("Twitter", "https://twitter.com/ILLTETEKA", true)

	-- Games
	require "games.ravimid"
	require "games.dirty-coward"
	require "games.hot-pocolate"
	require "games.ravimid"
	require "games.floppyball"
	require "games.joyous-journey"
	require "games.rude"
	require "games.underwear"
	require "games.hellscapes"
	require "games.shelter-shock"
	require "games.werewolf"
	require "games.hey-cameron"
	require "games.xxoo"
	-- Music
	require "music.little-gremlin"
	require "music.gum-road"
	require "music.some-dnue"
	-- Secrets
	require "secrets.sodalite"
	require "secrets.memestone"
	
	generate.setupFilesystem()
	generate.makeNavbar()
	generate.makeTemplate()
	generate.makeGrids()
	if _OS == "win" then
		os.execute("copy /B export" .. _SLASH .. "index.html export" .. _SLASH .. "404.html")
		os.execute("copy /B export" .. _SLASH .. "index.html export" .. _SLASH .. "403.html")
	else
		os.execute("cp -R export" .. _SLASH .. "index.html export" .. _SLASH .. "404.html")
		os.execute("cp -R export" .. _SLASH .. "index.html export" .. _SLASH .. "403.html")
	end

end

function generateDate(page)
	local score = (page.year * 100000) + (page.month * 1000) + (page.day * 100)
	local append_zero_month = ""
	local append_zero_day = ""
	
	if page.month < 10 then
		append_zero_month = "0"
	end
	
	if page.day < 10 then
		append_zero_day = "0"
	end
	
	local str = append_zero_month .. page.month .. "-" .. append_zero_day .. page.day .. "-" .. page.year
	return str, score
end

function print_r ( t )
	local print_r_cache={}
	local function sub_print_r(t,indent)
		if (print_r_cache[tostring(t)]) then
			print(indent.."*"..tostring(t))
		else
			print_r_cache[tostring(t)]=true
			if (type(t)=="table") then
				for pos,val in pairs(t) do
					if (type(val)=="table") then
						print(indent.."["..pos.."] => "..tostring(t).." {")
						sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
						print(indent..string.rep(" ",string.len(pos)+6).."}")
					elseif (type(val)=="string") then
						print(indent.."["..pos..'] => "'..val..'"')
					else
						print(indent.."["..pos.."] => "..tostring(val))
					end
				end
			else
				print(indent..tostring(t))
			end
		end
	end
	if (type(t)=="table") then
		print(tostring(t).." {")
		sub_print_r(t,"  ")
		print("}")
	else
		sub_print_r(t,"  ")
	end
	print()
end

init()