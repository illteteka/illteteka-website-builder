local index = pages.addContent(PAGE_MUSIC, "Little Gremlin - EP", "little-gremlin")
local page = pages.content[index]
page.desc = "Little Gremlin is my first EP! Little Gremlin is about a city overrun by monsters. All the songs were written in a little under a year. I started the EP after my computer got a virus and I lost all my old project files. Scary sequences, all from your head! is the only track that survived my hard drive wipe.RP_BRTracklist:RP_BR1. Use a protractor (1:41)RP_BR2. Scary sequences, all from your head! (0:50)RP_BR3. Panini Pressin (1:59)RP_BR4. Homeowner (2:22)"
page.month = 7
page.day = 6
page.year = 2019
page.release_date, page.release_score = generateDate(page)
page.logo = "music/lg.png"
page.logo_hd = "music/lg-large.png"
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
page.links.apple = "https://music.apple.com/gb/album/little-gremlin-ep/1540702003"
page.links.spotify = "https://open.spotify.com/album/3vkRKmccOOenmLbCT69qYc?si=MMjE_LqrTyi9jc_d3FbdiQ"
page.links.sc = "https://soundcloud.com/illteteka/sets/little-gremlin"
page.links.bc = "https://illteteka.bandcamp.com/album/little-gremlin-ep"
page.links.yt = "https://www.youtube.com/watch?v=jTkT6G1KrbY&list=OLAK5uy_lq-JElNGM-GV1rcy7udCb8LPrCCiUJI7I&index=2"