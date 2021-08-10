local index = pages.addContent(PAGE_MUSIC, "Some dnue", "some-dnue")
local page = pages.content[index]
page.desc = "Some dnue was supposed to be the killer single for a sister EP to Little Gremlin. I abandoned the project because I felt like the songs didn’t sound like I had improved enough since Little Gremlin."
page.month = 7
page.day = 4
page.year = 2020
page.release_date, page.release_score = generateDate(page)
page.logo = "music/sd.png"
page.logo_hd = "music/sd-large.png"
page.src = "music"

--[[
gt - Glorious Trainwrecks
direct - direct download
itch - itch.io
online - link on this site
github - source on github
sc - soundcloud
apple - apple music
bc - bandcamp
spotify - spotify
yt - youtube music
custom1_text - "download it here"
custom1_url - "google.com"
]]
page.links = {}
page.links.apple = "https://music.apple.com/gb/album/some-dnue-single/1540509655"
page.links.spotify = "https://open.spotify.com/track/1Nacysh9qv43LsZGVXSxE3?si=e6dc2aa3b80545bc"
page.links.sc = "https://soundcloud.com/illteteka/some-dnue"
page.links.bc = "https://illteteka.bandcamp.com/track/some-dnue"
page.links.yt = "https://youtu.be/JZvD_bJJF0A"