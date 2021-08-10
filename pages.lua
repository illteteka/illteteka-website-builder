local pages = {}

pages.navbar = {}
pages.content = {}

PAGE_GAMES = 1
PAGE_MUSIC = 2
PAGE_SECRETS = 3

function pages.addNavBar(text, url, isRedirect)

	local tbl = {}
	tbl.text = text
	
	if isRedirect then
		tbl.link = url
	else
		tbl.url = url
	end
	
	table.insert(pages.navbar, tbl)

end

function pages.addContent(kind, title, url)
	local tbl = {}
	tbl.title = title
	tbl.url = url
	tbl.kind = kind
	
	table.insert(pages.content, tbl)
	return #pages.content
end

return pages