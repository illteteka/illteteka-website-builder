local index = pages.addContent(PAGE_GAMES, "YOU ARE A DIRTY COWARD", "dirty-coward")
local page = pages.content[index]
page.desc = "I made this game with my friend Mike (MUCC) in about 6 hours. YOU ARE A DIRTY COWARD runs on Windows, Mac, Linux, and a 3DS that can run homebrew. The 3DS version was made with <a href='https://github.com/TurtleP/LovePotion'>LÖVE Potion</a>"
page.month = 2
page.day = 12
page.year = 2021
page.release_date, page.release_score = generateDate(page)
page.logo = "games/dirty-coward/icon.png"
page.logo_hd = "games/dirty-coward/icon-large.png"
page.src = "index"

page.screenshots = {
"games/dirty-coward/broom.png"
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
page.links.gt = "https://www.glorioustrainwrecks.com/node/12035"
page.links.itch = "https://illteteka.itch.io/you-are-a-dirty-coward-3ds"