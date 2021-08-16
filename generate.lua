local generate = {}

template = require 'html.template'

generate.navbar = ""
generate.template = ""

generate.br = '</p><div id="br"></div><p id="desc">'

function generate.setupFilesystem()
	os.execute("rmdir /S /Q export")
	os.execute("mkdir " .. "export")
end

function generate.makeNavbar()
	
	local extra_tabs = "\t\t\t"
	
	local navbar = ""
	navbar = navbar .. '<div id="navbar">\n'
	navbar = navbar .. extra_tabs .. '\t<a href="' .. _URL .. '"><img id="illteteka-logo" src="' .. _URL .. 'images/illteteka.svg" /></a>\n'
	navbar = navbar .. extra_tabs .. '\t<div id="nav-items">\n'
	
	local i = 1
	while i <= #pages.navbar do
	
		local link_text = pages.navbar[i].text
		local link_url = ""
		if pages.navbar[i].link ~= nil then
			link_url = pages.navbar[i].link
		else
			if pages.navbar[i].url == "index" then
				link_url = ""
			else
				link_url = pages.navbar[i].url .. "/"
			end
		end
		
		local nav_element = '<a href="'
		local use_url = string.find(link_url, "http") == nil
		local url_block = ""
		if use_url then
			url_block = _URL
		end
		nav_element = nav_element .. url_block .. link_url .. '">'
		nav_element = nav_element .. link_text .. '</a>'
		
		navbar = navbar .. extra_tabs .. '\t' .. nav_element .. '\n'
		if i + 1 <= #pages.navbar then
			navbar = navbar .. extra_tabs .. '\t<p>&nbsp;|&nbsp;</p>\n'
		end
	
		i = i + 1
	end
	
	navbar = navbar .. extra_tabs .. '\t</div>\n'
	navbar = navbar .. extra_tabs .. '</div>\n'
	
	generate.navbar = navbar
end

function generate.makeTemplate()
	local this_temp = "" .. template.html
	this_temp = string.gsub(this_temp, "RP_NAVBAR", generate.navbar)
	this_temp = string.gsub(this_temp, "RP_URL", _URL)
	generate.template = this_temp
end

function quicksort(t, left, right)
	if right < left then return end
	local pivot = left
	for i = left + 1, right do
		if t[i].release_score >= t[pivot].release_score then
			if i == pivot + 1 then
			  t[pivot],t[pivot+1] = t[pivot+1],t[pivot]
			else
			  t[pivot],t[pivot+1],t[i] = t[i],t[pivot],t[pivot+1]
			end
			pivot = pivot + 1
		end
	end
	quicksort(t, left, pivot - 1)
	quicksort(t, pivot + 1, right)
end

function generate.makeGrids()

	local extra_tabs = "\t\t\t"

	-- Split content into arbitrary number of groups
	local page_groups = {}
	local i = 1
	while i <= #pages.content do
	
		local this_kind = pages.content[i].kind
		if page_groups[this_kind] == nil then
			page_groups[this_kind] = {}
		end
		
		table.insert(page_groups[this_kind], pages.content[i])
		
		i = i + 1
	end
	
	-- TODO quick sort each of these based on release date
	local sort = 1
	while sort <= #page_groups do
		quicksort(page_groups[sort], 1, #page_groups[sort])
	
		sort = sort + 1
	end
	
	-- Loop through each group then each page
	local this_content = ""
	
	local group = 1
	while group <= #page_groups do

		local write_to = ""
		
		local page = 1
		while page <= #page_groups[group] do
			
			local this_page = page_groups[group][page]
			local modmod = #page_groups[group] % 3
			local blank_pages = 3 - modmod
			if modmod == 0 then
				blank_pages = 0
			end
			
			-- Make grid for page
			
			local url = this_page.url
			local title = this_page.title
			local logo = this_page.logo
			local logo_hd = this_page.logo_hd
			write_to = this_page.src
			
			local write_page_to = "games/"
			if write_to ~= "index" then
				write_page_to = write_to .. "/"
			end
			
			generate.makeEntries(this_page)
			
			if page % 3 == 1 then
				this_content = this_content .. '<div id="items">\n'
			end
			
			this_content = this_content .. extra_tabs .. '\t<div id="menu-item">\n'
			this_content = this_content .. extra_tabs .. '\t\t<a href="' .. _URL .. write_page_to .. url .. '.html">\n'
			this_content = this_content .. extra_tabs .. '\t\t\t<img id="item-img" srcset="' .. _URL .. 'images/' .. logo .. ' 1x, ' .. _URL .. 'images/' .. logo_hd .. ' 2x" src="' .. _URL .. 'images/' .. logo .. '">\n' -- eventually add write_page_to here
			this_content = this_content .. extra_tabs .. '\t\t\t<p id="item-name">' .. title .. '</p>\n'
			this_content = this_content .. extra_tabs .. '\t\t</a>\n'
			this_content = this_content .. extra_tabs .. '\t</div>\n'
			
			-- Make blank pages
			if page + 1 > #page_groups[group] then
				
				local make_blanks = 1
				while make_blanks <= blank_pages do
				
					this_content = this_content .. extra_tabs .. '\t<div id="menu-blank">\n'
					
					local blank_to_use = "rect"
					if group == 2 then
						blank_to_use = "square"
					end
					
					this_content = this_content .. extra_tabs .. '\t\t\t<img id="item-img-blank" src="' .. _URL .. 'images/blank-' .. blank_to_use .. '.png">\n'
					this_content = this_content .. extra_tabs .. '\t</div>\n'
				
					make_blanks = make_blanks + 1
				end
				
				this_content = this_content .. extra_tabs .. '</div>\n'
				
			elseif page % 3 == 0 then
				this_content = this_content .. extra_tabs .. '</div>\n'
			end
			
			page = page + 1
		end
		
		if i + 1 <= #page_groups[group] then
			this_content = this_content .. extra_tabs .. '\t<div id="item-space"></div>\n'
		else
			-- Finish and write the page
			local write_loc = "export" .. _SLASH .. "index.html"
			if write_to ~= "index" then
				os.execute("mkdir export" .. _SLASH .. write_to)
				write_loc = "export" .. _SLASH .. write_to .. _SLASH .. "index.html"
			else
				write_to = "games"
				os.execute("mkdir export" .. _SLASH .. "games")
			end
			
			write_to = generate.cap(write_to)
			
			local file = io.open(write_loc, "w")
			local this_temp2 = string.gsub(generate.template, "RP_CONTENT", this_content)
			this_temp2 = string.gsub(this_temp2, "RP_TITLE", write_to)
			this_temp2 = string.gsub(this_temp2, "RP_DATE", _DATE)
			file:write(this_temp2)
			file:close(file)
			this_content = ""
			write_to = ""
			
		end
	
		group = group + 1
	end

end

function generate.cap(x)
	local cap = string.upper(string.sub(x, 1, 1))
	return cap .. string.sub(x, 2)
end

function generate.makeEntries(page)

	local this_entry = ""
	local has_screenshots = page.screenshots ~= nil
	local has_screenshot_links = (page.screenshot_links ~= nil) and (#page.screenshot_links == #page.screenshots)
	local has_links = page.links ~= nil
	this_entry = this_entry .. '<div id="items">\n'
	this_entry = this_entry .. '\t<div id="body">\n'
	this_entry = this_entry .. '\t\t<div id="lr-content">\n'
	
	-- make the page
	if has_screenshots then
		-- Make left side
		this_entry = this_entry .. '\t\t\t<div id="body-left">\n'
	end
	
	-- 
	
	-- actually make the page
	this_entry = this_entry .. '\t\t\t\t<img id="body-img" srcset="' .. _URL .. 'images/' .. page.logo .. ' 1x, ' .. _URL .. 'images/' .. page.logo_hd .. ' 2x" src="' .. _URL .. 'images/' .. page.logo .. '">\n'
	this_entry = this_entry .. '\t\t\t\t<p id="title">' .. page.title .. '</p>\n'
	this_entry = this_entry .. '\t\t\t\t<p id="release">Released ' .. page.release_date .. '</p>\n'
	local this_desc = string.gsub(page.desc, "RP_BR", generate.br)
	this_entry = this_entry .. '\t\t\t\t<p id="desc">' .. this_desc .. '</p>\n'
	
	if has_screenshots then
		this_entry = this_entry .. '\t\t\t</div>\n'
		this_entry = this_entry .. '\t\t\t<div id="body-right">\n'
		this_entry = this_entry .. '\t\t\t\t<div id="top-space"></div>\n'
		-- put screenshots here
		
		local srn_start = '\t\t\t\t<a href="'
		local srn_mid = '"><img id="screen-img" src="'
		local srn_end = '"></a>\n'
		
		local screen = 1
		while screen <= #page.screenshots do
		
			local this_screen = page.screenshots[screen]
			local dir_link = _URL .. 'images/' .. this_screen
			this_entry = this_entry .. srn_start

			if has_screenshot_links then
				this_entry = this_entry .. page.screenshot_links[screen]
			else
				this_entry = this_entry .. dir_link
			end

			this_entry = this_entry .. srn_mid
			this_entry = this_entry .. dir_link
			this_entry = this_entry .. srn_end
			
			screen = screen + 1
		end
		
		-- end screenshots
		this_entry = this_entry .. '\t\t\t</div>\n'
	end
	
	-- end content
	this_entry = this_entry .. '\t\t</div>\n'
	
	-- make the links
	
	if has_links then
		this_entry = this_entry .. '\t\t<div id="links">\n'
		local these_links = generate.makeLinks(page)
		this_entry = this_entry .. these_links
		this_entry = this_entry .. '\t\t</div>\n'
	end
	
	-- end block
	this_entry = this_entry .. '\t</div>\n'
	this_entry = this_entry .. '</div>\n'
	
	local write_loc2 = "export" .. _SLASH .. "games" .. _SLASH .. page.url .. ".html"
	local write_to2 = page.src
	if write_to2 ~= "index" then
		write_loc2 = "export" .. _SLASH .. write_to2 .. _SLASH .. page.url .. ".html"
		os.execute("mkdir export" .. _SLASH .. write_to2)
	else
		os.execute("mkdir export" .. _SLASH .. "games")
	end
	
	local file = io.open(write_loc2, "w")
	local this_temp3 = string.gsub(generate.template, "RP_CONTENT", this_entry)
	this_temp3 = string.gsub(this_temp3, "RP_TITLE", page.title)
	this_temp3 = string.gsub(this_temp3, "RP_DATE", _DATE)
	file:write(this_temp3)
	file:close(file)

end

function generate.makeLinks(page)
	local str = ""
	local pre_link = '\t\t\t<a class="sp2" id="link" href="'
	local mid_link = '">&gt;&nbsp;'
	local end_link = '&nbsp;&lt;</a>\n'
	
	-- Direct Download
	if page.links.direct ~= nil then
		str = str .. pre_link
		str = str .. page.links.direct
		str = str .. mid_link
		str = str .. "Direct Download"
		str = str .. end_link
	end
	
	-- Play online on illteteka.com
	if page.links.online ~= nil then
		str = str .. pre_link
		str = str .. page.links.online
		str = str .. mid_link
		str = str .. "Play online on illteteka.com"
		str = str .. end_link
	end
	
	-- Download on Itch.io
	if page.links.itch ~= nil then
		str = str .. pre_link
		str = str .. page.links.itch
		str = str .. mid_link
		str = str .. "Download on Itch.io"
		str = str .. end_link
	end
	
	-- Download on Glorious Trainwrecks
	if page.links.gt ~= nil then
		str = str .. pre_link
		str = str .. page.links.gt
		str = str .. mid_link
		str = str .. "Download on Glorious Trainwrecks"
		str = str .. end_link
	end
	
	-- View source on GitHub
	if page.links.github ~= nil then
		str = str .. pre_link
		str = str .. page.links.github
		str = str .. mid_link
		str = str .. "View source on GitHub"
		str = str .. end_link
	end
	
	-- Stream X on Apple Music
	if page.links.apple ~= nil then
		str = str .. pre_link
		str = str .. page.links.apple
		str = str .. mid_link
		str = str .. "Stream " .. page.title .. " on Apple Music"
		str = str .. end_link
	end
	
	-- Stream X on Bandcamp
	if page.links.bc ~= nil then
		str = str .. pre_link
		str = str .. page.links.bc
		str = str .. mid_link
		str = str .. "Stream " .. page.title .. " on Bandcamp"
		str = str .. end_link
	end
	
	-- Stream X on Newgrounds
	if page.links.ng ~= nil then
		str = str .. pre_link
		str = str .. page.links.ng
		str = str .. mid_link
		str = str .. "Stream " .. page.title .. " on Newgrounds"
		str = str .. end_link
	end

	-- Stream X on SoundCloud
	if page.links.sc ~= nil then
		str = str .. pre_link
		str = str .. page.links.sc
		str = str .. mid_link
		str = str .. "Stream " .. page.title .. " on SoundCloud"
		str = str .. end_link
	end
	
	-- Stream X on Spotify
	if page.links.spotify ~= nil then
		str = str .. pre_link
		str = str .. page.links.spotify
		str = str .. mid_link
		str = str .. "Stream " .. page.title .. " on Spotify"
		str = str .. end_link
	end
	
	-- Stream X on YouTube
	if page.links.yt ~= nil then
		str = str .. pre_link
		str = str .. page.links.yt
		str = str .. mid_link
		str = str .. "Stream " .. page.title .. " on YouTube"
		str = str .. end_link
	end
	
	-- Custom 1
	if page.links.custom1_text ~= nil then
		str = str .. pre_link
		str = str .. page.links.custom1_url
		str = str .. mid_link
		str = str .. page.links.custom1_text
		str = str .. end_link
	end
	
	return str
end

return generate