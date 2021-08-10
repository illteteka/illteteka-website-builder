local index = pages.addContent(PAGE_GAMES, "Shelter Shock", "shelter-shock")
local page = pages.content[index]
page.desc = "I made this with my friend Evan in high school. The game is missing something to make it more meaningful so we dropped it. MassDiGI Game Challenge 2016 runner-up in the high school category. Made with GameMaker: Studio, Windows only."
page.month = 10
page.day = 1
page.year = 2015
page.release_date, page.release_score = generateDate(page)
page.logo = "games/shelter-shock/icon.png"
page.logo_hd = "games/shelter-shock/icon-large.png"
page.src = "index"

page.screenshots = {
"games/shelter-shock/scr-1.png",
"games/shelter-shock/scr-2.png"
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
page.links.direct = "https://hoksy.github.io/games/sheltershock/ShelterShock.zip"