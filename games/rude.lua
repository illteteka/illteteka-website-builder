local index = pages.addContent(PAGE_GAMES, "rude", "rude")
local page = pages.content[index]
page.desc = "A memory-puzzle game for Windows. Made with Game Maker 8, Windows only."
page.month = 9
page.day = 1
page.year = 2014
page.release_date, page.release_score = generateDate(page)
page.logo = "games/rude/icon.png"
page.logo_hd = "games/rude/icon-large.png"
page.src = "index"

page.screenshots = {
"games/rude/scr-1.png",
"games/rude/scr-2.png"
}

--[[
direct - direct download
online - link on this site
itch - itch.io
gt - Glorious Trainwrecks
github - source on github
apple - apple music
sc - soundcloud
spotify - spotify
yt - youtube music
custom1_text - "download it here"
custom1_url - "google.com"
]]
page.links = {}
page.links.itch = "https://illteteka.itch.io/rude"