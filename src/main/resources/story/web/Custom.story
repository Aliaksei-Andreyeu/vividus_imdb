Scenario: Signing In
Given I am on the main application page
When I click on element located `By.Xpath(//a[contains(@href,"signin")])`
When I click on element located `By.Xpath(//a[contains(@href, "https://www.imdb.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.imdb.com%2Fregistration%2Fap-signin-handler%2Fimdb_us&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=imdb_us&openid.mode=checkid_setup&siteState=eyJvcGVuaWQuYXNzb2NfaGFuZGxlIjoiaW1kYl91cyIsInJlZGlyZWN0VG8iOiJodHRwczovL3d3dy5pbWRiLmNvbS8_cmVmXz1sb2dpbiJ9&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&tag=imdbtag_reg-20")])`
When I enter `qihsrvbymyjffyrzyu@awdrt.org` in field located `By.Xpath(//*[@id="ap_email"])`
When I enter `qihsrvby` in field located `By.Xpath(//*[@id="ap_password"])`
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
When I click on element located `By.Xpath(//*[@id="lister-sort-by-options"])`
When I click on element located `By.Xpath(//*[@id="lister-sort-by-options"]/option[5])`
When I click on element located `By.Xpath(//a[text()="Export this list"])`
