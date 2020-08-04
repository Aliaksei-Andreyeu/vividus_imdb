Scenario: Signing In
Given I am on the main application page
When I click on element located `By.Xpath(//a[contains(@href,"signin")])`
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
When I click on element located `By.Xpath(//*[@class="ipc-button uc-add-wl-button-icon--add watchlist--title-main-desktop-standalone ipc-button--core-base ipc-button--single-padding ipc-button--default-height"])`
Then the text 'Added to Watchlist' exists

Scenario: Navigating, sorting and exporting Watchlist
Given I am on the main application page
When I click on element located `By.Xpath(//div[text()="Watchlist"])`
When I click on element located `By.Xpath(//span[contains(@class, "lister-widget-sprite lister-sort")])`
When I click on element located `By.Xpath(//a[text()="Export this list"])`
