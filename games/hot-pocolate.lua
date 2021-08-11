local index = pages.addContent(PAGE_GAMES, "hot pocolate", "hot-pocolate")
local page = pages.content[index]
page.desc = "hot pocolate is a music visualizer for Windows, Mac, Linux, and a Nintendo Switch that can run homebrew. Tap along to the beat of your favorite song while hot pocolate entrances you. Made with <a class='sp' href='https://love2d.org/'>LÖVE</a> and <a class='sp' href='https://github.com/TurtleP/LovePotion'>LÖVE Potion</a>"
page.month = 8
page.day = 15
page.year = 2018
page.release_date, page.release_score = generateDate(page)
page.logo = "games/hot-pocolate/icon.png"
page.logo_hd = "games/hot-pocolate/icon-large.png"
page.src = "index"

page.screenshots = {
"games/hot-pocolate/hp.png"
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
page.links.gt = "https://www.glorioustrainwrecks.com/node/11237"
page.links.itch = "https://illteteka.itch.io/hot-pocolate"
page.links.github = "https://github.com/illteteka/Hot-Pocolate"