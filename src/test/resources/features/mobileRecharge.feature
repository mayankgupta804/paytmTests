Feature: Mobile Recharge Feature
  As a user I want to recharge my mobile phone

  Background: Login
    Given I am on the login page
    And I enter my mobile number as 9430790750 and password as dcba4321 and login

  @paytm-mobile-recharge
  Scenario: I want to recharge my phone
    And I choose mobile prepaid option
    And I choose prepaid option and enter my mobile number as 9430790750 and amount as 10
    And I proceed to pay the amount
    And I enter my card number as 1234123412341234
    And I enter the month and year
    And I enter my cvv as 221
    And I choose to pay now