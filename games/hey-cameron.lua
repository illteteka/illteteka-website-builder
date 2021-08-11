local index = pages.addContent(PAGE_GAMES, "hey cameron", "hey-cameron")
local page = pages.content[index]
page.desc = "A short <a class='sp' href='https://www.flickgame.org/'>flickgame</a>"
page.month = 6
page.day = 20
page.year = 2017
page.release_date, page.release_score = generateDate(page)
page.logo = "games/hey-cameron/icon.png"
page.logo_hd = "games/hey-cameron/icon-large.png"
page.src = "index"

page.screenshots = {
"games/hey-cameron/hc.png"
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
page.links.online = "https://illteteka.com/play/hey-cameron/"