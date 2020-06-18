***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
***Test Cases***
User Load Page
    Open and Load
User Select The Market
    Open and Load
    Select The Market
    Close Browser
User Sign Into Account
    Open and Load
    Sign In
    Close Browser
Dismiss Alert
    ${BUTTON_COUNTS} =  GET ELEMENT COUNT  css=.locale-main-header
    Run Keyword if  ${BUTTON_COUNTS}>0  Dismiss Alert 
User Search The Product
    Open and Load
    Search The Product
    Verify That Search Completed
    Close Browser
User Adds Product To Cart
    Open and Load
    Search The Product
    Verify That Search Completed
    User Select One Of The Results
    Choose The Product Size
    Adds Product
    Verify That Product Add To Cart
    Close Browser
    
    
