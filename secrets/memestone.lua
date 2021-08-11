local index = pages.addContent(PAGE_SECRETS, "Memestone", "memestone")
local page = pages.content[index]
page.desc = "Memestone was made for my Communications Independent Study at UMass Amherst. The project was overseen by <a class='sp' href='https://curiositybits.cc/'>Prof. Weiai Xu</a>. Memestone is an educational game for analyzing the content of Reddit memes. The game downloads memes from Reddit and converts them into trading cards. The trading cards are scored based on the sentiment associated with the text data for the meme (Reddit comments, image OCR) using sentiment analysis algorithms by TextBlob and NLTK."
page.month = 10
page.day = 1
page.year = 2020
page.release_date, page.release_score = generateDate(page)
page.logo = "secrets/memestone/icon.png"
page.logo_hd = "secrets/memestone/icon-large.png"
page.src = "secrets"

page.screenshots = {
"secrets/memestone/scr-1.png",
"secrets/memestone/scr-2.png"
}

page.video = "https://www.youtube.com/watch?v=3QloUiGR00o"

page.links = {}
page.links.github = "https://github.com/illteteka/Memestone"
page.links.custom1_text = "View project demonstration on YouTube"
page.links.custom1_url = "https://www.youtube.com/watch?v=3QloUiGR00o"