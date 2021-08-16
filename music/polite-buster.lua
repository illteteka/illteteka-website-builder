local index = pages.addContent(PAGE_MUSIC, "Polite Buster", "polite-buster")
local page = pages.content[index]
page.desc = "Polite Buster is a story from over 1,000 years in the future. Made as a collaboration with <a class='sp' href='https://fatherhotep.bandcamp.com'>Father Hotep</a> who provides vocals on the track.RP_BR1. Polite Buster (2:51)"
page.month = 8
page.day = 14
page.year = 2021
page.release_date, page.release_score = generateDate(page)
page.logo = "music/pb.png"
page.logo_hd = "music/pb-large.png"
page.src = "music"

page.screenshots = {
"music/polite-buster/bugs.png",
"music/polite-buster/laptop.png"
}

page.screenshot_links = {
"https://www.youtube.com/watch?v=ohjz0ONeB0Q&list=PLYdHHQIaNOn74uiP5rTnQi6fk_WTzenN_",
"https://www.youtube.com/watch?v=VPSUCsRC0Xs&list=PLYdHHQIaNOn74uiP5rTnQi6fk_WTzenN_&index=2"
}

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
page.links.apple = "https://music.apple.com/us/album/polite-buster-feat-father-hotep-single/1580219277"
page.links.spotify = "https://open.spotify.com/track/0qomGTaRmbukVHvCxhAuCU?si=3c7d6ef4b40440b5"
page.links.sc = "https://soundcloud.com/illteteka/polite-buster"
page.links.bc = "https://illteteka.bandcamp.com/track/polite-buster-ft-father-hotep"
page.links.ng = "https://www.newgrounds.com/audio/listen/1066938"
page.links.yt = "https://www.youtube.com/watch?v=fy3GpWZu4mc"