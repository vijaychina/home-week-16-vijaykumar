@regression
Feature: As a user,
  I should login successfully with correct email and password
  I should not login successfully with incorrect email and password
  I should logout successfully


  @author_Vijay @sanity @smoke
  Scenario: User should login successfully with correct email and password
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "Login to your account"
    And I enter "vijaykumar123@gmail.com" email and "vijay@1234" password for login
    And I click on button "Login"


  @author_Vijay @smoke
  Scenario: User should not login successfully with incorrect email and password
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "Login to your account"
    And I enter "vijay@gmail.com" email and "vijay123" password for login
    And I click on button "Login"
    And I should see the login page text "Your email or password is incorrect!"


  @author_Vijay
  Scenario: User should logout successfully
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "Login to your account"
    And I enter "vijaykumar123@gmail.com" email and "vijay@1234" password for login
    And I click on button "Login"
    Then I should see the text "Logged in as "
    And I click on header menu option "Logout"
    And I am on login page and verify the login URL