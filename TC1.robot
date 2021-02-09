*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${name}  Michael
${lastname}  Scofield


*** Test Cases ***

GoForm
    #If you haven't added your chromedriver.exe to the environment variables, you should use 'webdriver chrome execable_path = "your_chromedriver.exe_path"' before the code below
    open browser  http://www.practiceselenium.com/practice-form.html  Chrome
    maximize browser window

NameInputs
    input text  name=firstname  ${name}
    input text  name=lastname   ${lastname}

SexRadioButtons
    select radio button  sex  Male

ExpRadioButton
    select radio button  exp  5

InputDateStopped
    input text  xpath=//*[@id="datepicker"]  No

FavoriteChaiCheckBox
    select check box  RedTea
    select check box  oolongtea

ExcitingAboutChai
    select check box  id=tool-0

ChooseContinent
    select from list by label  continents  Antartica

ChooseSeleniumCommands
    select from list by label  selenium_commands  WebElement Commands

SubmitForm
    click button  xpath=//*[@id="submit"]

CloseBrowser
    close browser
    

*** Keywords ***


