local index = pages.addContent(PAGE_GAMES, "hellscapes", "hellscapes")
local page = pages.content[index]
page.desc = "A weird experiment that I think is an inside joke. Made with GameMaker: Studio, Windows only."
page.month = 10
page.day = 22
page.year = 2017
page.release_date, page.release_score = generateDate(page)
page.logo = "games/hellscapes/icon.png"
page.logo_hd = "games/hellscapes/icon-large.png"
page.src = "index"

page.screenshots = {
"games/hellscapes/scr.png"
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
page.links.direct = "https://illteteka.com/play/hellscapes.zip"