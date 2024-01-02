@regression
Feature: As a user,
  I should register successfully
  I should see error message while register with existing email
  I should Place Order: Register while Checkout
  I should Place Order: Register before Checkout
  I should Place Order: Login before Checkout
  I should verify address details in checkout page


  @author_Vijay @sanity
  Scenario: User should register successfully
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "New User Signup!"
    And I send name "vijaykumar" and email "vijaykumar" to signup
    And I click on button "Signup"
    Then I should see text "ENTER ACCOUNT INFORMATION"
    And I fill all details in signup page "Mr" "vijaykumar@123" "10" "March" "1989" "vijaykumar" "Patel" "Park Avenue" "Diu" "India" "Gujarat" "Surat" "495003" "99584756200"
    And I click on news letter subscription check box
    And I click on special offers check box
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "vijaykumar"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    And I click on continue button after deleting account


  @author_Vijay @smoke
  Scenario: User should see error message while register with existing email
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "New User Signup!"
    And I send name "vijaykumar" to name field in signup
    And I send email "vijaykumar123@gmail.com" to email field in signup
    And I click on button "Signup"
    Then I should see error message "Email Address already exist!"



  @author_Vijay
  Scenario: User should Place Order: Register while Checkout
    Given I am on homepage and verify the homepage URL
    When I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I click on register link in the checkout popup
    And I send name "vijaykumar" and email "vijaykumar" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Mr" "vijaykumar@123" "10" "March" "1989" "vijaykumar" "Patel" "Park Avenue" "Diu" "India" "Gujarat" "Surat" "495003" "99584756200"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "vijaykumar"
    And I click on header menu option "Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "vijay Patel" "8862972640265577" "002" "01" and "2030"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account


  @author_Vijay
  Scenario: User should Place Order: Register before Checkout
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    And I send name "vijaykumar" and email "vijaykumar" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Mr" "vijaykumar@123" "10" "March" "1989" "vijaykumar" "Patel" "Park Avenue" "Diu" "India" "Gujarat" "Surat" "495003" "99584756200"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "vijaykumar"
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "vijay Patel" "8862972640265577" "002" "01" and "2030"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account



  @author_Vijay
  Scenario: User should place the order successfully : Login before Checkout
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "Login to your account"
    And I enter "vijaykumar123@gmail.com" email and "vijay@1234" password for login
    And I click on button "Login"
    Then I should see the text "Logged in as "
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "vijay Patel" "8862972640265577" "002" "01" and "2030"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Logout"



  @author_Vijay
  Scenario: Verify address details in checkout page
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    And I send name "vijaykumar" and email "vijaykumar" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Mr" "vijaykumar@123" "10" "March" "1989" "vijaykumar" "Patel" "Park Avenue" "Diu" "India" "Gujarat" "Surat" "495003" "99584756200"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "vijaykumar"
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    Then I should see the delivery address is same address filled at the time registration of account "Park Avenue"
    And I should see billing address is same address filled at the time registration of account "Park Avenue"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    And I click on continue button after deleting account