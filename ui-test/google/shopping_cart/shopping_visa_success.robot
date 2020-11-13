*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables ***
${web_Browser}    chrome
${URL}    https://dminer.in.th/Product-list.html
${card_Number}    4719700591590995
${expired_Month}    7
${expired_Year}    20
${CVV_code}    752
${card_Name}    Karnwat Wongudom

*** Test Cases ***
Test ordering system for a parents who is ordering a toy for their child, payment by VISA and shipping via Kerry
    Open browser and show lists of products
    Show each individual products details
    Select quantities of each products you want to buy
    Add products to the cart
    Check and confirm order and go to Payment Page
    Payment via Credit Card VISA
    Display Thank you message to the customer

*** Keywords ***
Open browser and show lists of products
    Open Browser    ${URL}    ${web_Browser}
Show each individual products details
    Element Should Contain    id:productName-1    expected=43 Piece Dinner Set
    Element Should Contain    id:productPrice-1    expected=12.95 USD
    Click Element    id:viewMore-1
Select quantities of each products you want to buy
    Wait Until Element Contains    id:productName    43 Piece dinner Set
    Element Should Contain    id:productBrand    expected=CoolKidz
    Element Should Contain    id:productPrice    expected=12.95 USD
    Input Text    id:productQuantity    1
Add products to the cart
    Click Element    id:addToCart
Check and confirm order and go to Payment Page
    Wait Until Page Contains    ยืนยันคำสั่งซื้อ
    Element Should Contain    id:productName-1    expected=43 Piece dinner Set
    Element Should Contain    id:totalAmount    expected=14.95 USD
    Click Element    id:confirmPayment
Payment via Credit Card VISA
    Wait Until Page Contains    เลขบัตร:
    Input Text    id:cardNumber    ${card_Number}
    Input Text    id:expiredMonth    ${expired_Month}
    Input Text    id:expiredYear    ${expired_Year}
    Input Text    id:cvv    ${CVV_code}
    Input Text    id:cardName    ${card_Name}
    Element Should Contain    id:labelTotalPrice    expected=241.90 USD
    Click Element    id:Payment
Display Thank you message to the customer
    Wait Until Element Contains    id:notify    วันเวลาที่ชำระเงิน 1/3/2563 13:30:00 หมายเลขคำสั่งซื้อ 8004359103 คุณสามารถติดตามสินค้าผ่านช่องทาง Kerry ด้วยหมายเลข 1785261900