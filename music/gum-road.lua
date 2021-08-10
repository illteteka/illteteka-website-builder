local index = pages.addContent(PAGE_MUSIC, "Gum Road", "gum-road")
local page = pages.content[index]
page.desc = "Gum Road is a short ambient album about the winter.RP_BRTracklist:RP_BR1. Tunnel Extractor (1:11)RP_BR2. Pump Downloader (1:16)RP_BR3. Absolute Malt (1:08)RP_BR4. Leaf Sniffer (1:46)RP_BR5. Exit Ticket (0:53)"
page.month = 3
page.day = 3
page.year = 2021
page.release_date, page.release_score = generateDate(page)
page.logo = "music/gr.png"
page.logo_hd = "music/gr-large.png"
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
page.links.apple = "https://music.apple.com/gb/album/gum-road-ep/1556773718"
page.links.spotify = "https://open.spotify.com/album/3yXZBySXAGZvJds9a96JOY?si=E5xLuFoURSW450deAtOTFQ"
page.links.sc = "https://soundcloud.com/illteteka/gum-road"
page.links.bc = "https://illteteka.bandcamp.com/album/gum-road"
page.links.yt = "https://www.youtube.com/watch?v=m7IDYYhBljs&list=OLAK5uy_mPjWC1WZmT0AzF2aIiH4rKVBq-bX2vljQ"