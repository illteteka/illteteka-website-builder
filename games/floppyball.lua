local index = pages.addContent(PAGE_GAMES, "Floppyball Ultimate / Not Adventure", "floppyball")
local page = pages.content[index]
page.desc = "Floppyball Ultimate is an arcade game for two.RP_BRNot Adventure is a short point and click adventure game. (It’s probably the best game I’ve ever made)RP_BRMade with Game Maker 8, Windows only."
page.month = 11
page.day = 30
page.year = 2014
page.release_date, page.release_score = generateDate(page)
page.logo = "games/floppyball/icon.png"
page.logo_hd = "games/floppyball/icon-large.png"
page.src = "index"

page.screenshots = {
"games/floppyball/fbu.png",
"games/floppyball/na.png"
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
page.links.itch = "https://illteteka.itch.io/floppyball-ultimate"