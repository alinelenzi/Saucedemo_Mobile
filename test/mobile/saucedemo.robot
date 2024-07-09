*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-alineteste68-46cce
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Test Cases ***
Teste
    Open Application    ${REMOTE_URL}    platformName=Android    appium:platformVersion=9.0    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    browserName=chrome    browserVersion=126    appium:automationName=uiautomator2    appium:ensureWebviewsHavePages=${True}    appium:url=https://www.saucedemo.com/    appium:nativeWebScreenshot=${True}    appium:newCommandTimeout=${3600}    appium:connectHardwareKeyboard=${True}

    Go To Url    https://www.saucedemo.com/
    ${el1} =    Set Variable    id=user-name
    Input Text    ${el1}    standard_user
    ${el2} =    Set Variable    id=password
    Input Text    ${el2}    secret_sauce
    ${el3} =    Set Variable     id=login-button
    Click Element    ${el3}
    ${img_produto} =    Set Variable    id=item_4_img_link
    Click Element    ${img_produto}
    Swipe    ${470}    ${1876}    ${457}    ${1024}
    ${el6} =    Set Variable    id=add-to-cart
    Click Element    ${el6}
    Swipe    ${518}    ${170}    ${573}    ${1571}
    ${el7} =    Set Variable     accessibility_id=1
    Click Element    ${el7}
    ${el8} =    Set Variable     android=new UiSelector().text("Your Cart")
    Click Element    ${el8}
    ${el9} =    Set Variable     android=new UiSelector().text("Sauce Labs Backpack")
    Click Element    ${el9}
    Swipe    ${488}    ${1970}    ${505}    ${921}
    ${el5} =    Set Variable     id=login-button
    Click Element    ${el5}
    Swipe    ${556}    ${272}    ${518}    ${1694}
    ${el6} =    Set Variable     accessibility_id=1
    Click Element    ${el6}
    ${el7} =    Set Variable    id=remove-sauce-labs-backpack
    Click Element    ${el7}
    ${package_name} =    Execute Script    mobile: getCurrentPackage