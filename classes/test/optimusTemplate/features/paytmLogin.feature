Feature: Login Feature
  As a user I should be able to log into my account.

  Background: Login
    Given I am on the login page
    And I enter my mobile number as 9430790750 and password as dcba4321 and login

  @paytm-mobile-recharge
  Scenario: I want to recharge my phone
    And I choose mobile prepaid option
    And I choose prepaid option and enter my mobile number as 9430790750 and amount as 10
    And I proceed to pay the amount
    And I enter my card number as 1234123412341234
    And I enter my cvv as 221
    And I enter the month and year
    And I choose to pay now

  @paytm-pay-or-scan
    Scenario: I want to send money
    And I click on pay or scan button

  @paytmLogin-error
  Scenario: I want to log into my account
    And I enter my mobile number as 9430790750 and password as dasdawsd and login
#    Then I should be logged into my account

  @paytm-touch
  Scenario: I want to shop
    And I scroll down the screen
    And I start another activity

  @paytmLogin-error-dataDriven
  Scenario Outline: Data driven login activity
    And I enter my mobile number as <mobileNumber> and password as <password> and login

    Examples:
      | mobileNumber | password |
      | 7204515609   | abcd123  |
      | 9430790750   | bvda123  |


