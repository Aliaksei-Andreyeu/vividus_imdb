Scenario: Signing In
Given I am on the main application page
When I click on element located `By.Xpath(//div[@class="_3cMNCrSVkxQhCkVs1JLIib navbar__user sc-kpOJdX kPnwgD"]))`
When I click on element located `By.Xpath(//span[contains(text(), "Sign in with IMDb")])`
When I enter `${UserEmail}` in field located `By.Xpath(//*[@id="ap_email"])`
When I enter `${UserPass}` in field located `By.Xpath(//*[@id="ap_password"])`
When I click on element located `By.Xpath(//*[@id="signInSubmit"])`
Then the text 'testing_profile' exists

Scenario: Performing Search
When I enter `The Shawshank Redemption` in field located `By.Xpath(//*[@id="suggestion-search"])`
When I click on element located `By.Xpath(//*[@id="suggestion-search-button"])`
When I click on a link with the text 'The Shawshank Redemption' and URL 'https://www.imdb.com/title/tt0111161/?ref_=fn_al_tt_1'
Then the page title is 'The Shawshank Redemption (1994) - IMDb'

Scenario: Adding movie to Watchlist
When I click on element located `By.Xpath(//div[text()="Add to Watchlist"] )`
Then the text 'Added to Watchlist' exists

Scenario: Navigating, sorting and exporting Watchlist
Given I am on the main application page
When I click on element located `By.Xpath(//div[text()="Watchlist"])`
When I select `Release Date` from drop down located `By.xpath(//*[@id="lister-sort-by-options"])`
When I click on element located `By.Xpath(//a[text()="Export this list"])`
