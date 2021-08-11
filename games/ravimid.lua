local index = pages.addContent(PAGE_GAMES, "ravimid", "ravimid")
local page = pages.content[index]
page.desc = "play as a local pyramidman as you crawl, fight, and ascend your way to save your fatherRP_BRravimid runs on <a class='sp' href='https://love2d.org/'>LÖVE</a> on Windows, Mac and LinuxRP_BRand <a class='sp' href='https://github.com/videah/LovePotion'>LÖVE Potion</a> on a 3DS that can run homebrew. The game utilizes the 3DS’s 3D slider to control the avatar."
page.month = 8
page.day = 25
page.year = 2016
page.release_date, page.release_score = generateDate(page)
page.logo = "games/ravimid/icon.png"
page.logo_hd = "games/ravimid/icon-large.png"
page.src = "index"

page.screenshots = {
"games/ravimid/scr-1.png",
"games/ravimid/scr-2.png"
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
page.links.gt = "https://www.glorioustrainwrecks.com/node/10298"
page.links.itch = "https://illteteka.itch.io/ravimid"