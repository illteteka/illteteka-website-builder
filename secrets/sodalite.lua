local index = pages.addContent(PAGE_SECRETS, "Sodalite", "sodalite")
local page = pages.content[index]
page.desc = "Sodalite is a 2D vector editor for Windows, Mac, and Linux. Sodalite pioneers vertex sculpting as an alternative to making low poly vector artwork. It features new smart triangulation and advanced vertex manipulation algorithms allowing for pixel-perfect precision when making artwork. Sodalite also has unlimited undo! Sodalite was made with <a href='https://love2d.org/'>LÖVE</a>RP_BRIf you would like to receive an in-development build of Sodalite, please reach out to me at my email:RP_BRnick@illteteka.com"
page.month = 6
page.day = 7
page.year = 2020
page.release_date, page.release_score = generateDate(page)
page.logo = "secrets/sodalite/icon.png"
page.logo_hd = "secrets/sodalite/icon-large.png"
page.src = "secrets"

page.screenshots = {
"secrets/sodalite/scr-1.png",
"secrets/sodalite/scr-2.png",
"secrets/sodalite/scr-3.png"
}

page.video = "https://www.youtube.com/watch?v=Mi5sEtGUaWc"

page.links = {}
page.links.custom1_text = "View Sodalite demonstration on YouTube"
page.links.custom1_url = "https://www.youtube.com/watch?v=Mi5sEtGUaWc"