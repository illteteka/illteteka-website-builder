local index = pages.addContent(PAGE_GAMES, "Werewolf: The Achocolypse", "werewolf")
local page = pages.content[index]
page.desc = "Werewolf: The Achocolypse was made for the <a href='https://itch.io/jam/love2d-jam-2021'>LÖVE Jam 2021</a>. I made this game with NotQuiteApex and Percy_Creates. This game scored 12th overall for the game jam and 2nd in audio!"
page.month = 2
page.day = 22
page.year = 2021
page.release_date, page.release_score = generateDate(page)
page.logo = "games/werewolf/icon.png"
page.logo_hd = "games/werewolf/icon-large.png"
page.src = "index"

page.screenshots = {
"games/werewolf/scr-1.png",
"games/werewolf/scr-2.png"
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
page.links.github = "https://github.com/NotQuiteApex/LoveJam21"
page.links.itch = "https://notquiteapex.itch.io/werewolf-the-achocolypse"