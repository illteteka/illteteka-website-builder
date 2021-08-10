local index = pages.addContent(PAGE_GAMES, "Joyous Journey", "joyous-journey")
local page = pages.content[index]
page.desc = "Joyous Journey is an attempt at making an endless RPG battle simulator. Made with GameMaker: Studio, Windows only."
page.month = 4
page.day = 25
page.year = 2019
page.release_date, page.release_score = generateDate(page)
page.logo = "games/joyous-journey/icon.png"
page.logo_hd = "games/joyous-journey/icon-large.png"
page.src = "index"

page.screenshots = {
"games/joyous-journey/scr-1.png",
"games/joyous-journey/scr-2.png"
}

page.video = "youtube.com"

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
page.links.gt = "https://www.glorioustrainwrecks.com/node/11513"