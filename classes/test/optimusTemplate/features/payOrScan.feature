Feature: Pay/Scan Feature
  As a user I want to add money to my paytm account

  Background: Login
    Given I am on the login page
    And I enter my mobile number as 9430790750 and password as dcba4321 and login

  @paytm-pay-or-scan
  Scenario: I want to send money
    And I tap on pay or scan button
    And I proceed to enter the mobile number
    And I enter the mobile number as 7204515609 and amount as 10 and I proceed
    And I enter my card number as 1234123412341234
    And I enter my cvv as 221
    And I enter the month and year
    And I choose to pay now