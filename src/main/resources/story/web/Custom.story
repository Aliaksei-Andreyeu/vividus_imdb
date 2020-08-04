Scenario: Opening sign in page
Given I am on the main application page
When I click on element located `By.Xpath(//a[contains(@href,'signin')])`
When I click on element located `By.Xpath(//span[@class="auth-provider-text"])`
Then the page with the URL 'https://www.imdb.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.imdb.com%2Fregistration%2Fap-signin-handler%2Fimdb_us&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=imdb_us&openid.mode=checkid_setup&siteState=eyJvcGVuaWQuYXNzb2NfaGFuZGxlIjoiaW1kYl91cyIsInJlZGlyZWN0VG8iOiJodHRwczovL3d3dy5pbWRiLmNvbS8_cmVmXz1sb2dpbiJ9&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&tag=imdbtag_reg-20' is loaded

Scenario: Loging with credentials
When I enter `qihsrvbymyjffyrzyu@awdrt.org` in field located `By.Xpath(//*[@id="ap_email"])`
When I enter `qihsrvby` in field located `By.Xpath(//*[@id="ap_password"])`
When I click on element located `By.Xpath(//*[@id="signInSubmit"])`
Then a link with the text '$testing_profile' exists