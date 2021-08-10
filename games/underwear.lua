local index = pages.addContent(PAGE_GAMES, "today i bought some underwear", "underwear")
local page = pages.content[index]
page.desc = "A weird experiment that is an inside joke. Made with GameMaker: Studio, Windows only."
page.month = 7
page.day = 31
page.year = 2017
page.release_date, page.release_score = generateDate(page)
page.logo = "games/underwear/icon.png"
page.logo_hd = "games/underwear/icon-large.png"
page.src = "index"

page.screenshots = {
"games/underwear/scr-1.png"
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
page.links.gt = "https://www.glorioustrainwrecks.com/node/10743"