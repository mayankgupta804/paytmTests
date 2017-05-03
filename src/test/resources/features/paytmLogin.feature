Feature: Login Feature
  As a user I should be able to log into my account.

  Background: Login
    Given I am on the login page
    And I enter my mobile number as 9430790750 and password as dcba4321 and login

  @paytmLogin-error
  Scenario: I want to log into my account
    And I enter my mobile number as 9430790750 and password as dasdawsd and login

  @paytmLogin-error-dataDriven
  Scenario Outline: Data driven login activity
    And I enter my mobile number as <mobileNumber> and password as <password> and login

    Examples:
      | mobileNumber | password |
      | 7204515609   | abcd123  |
      | 9430790750   | bvda123  |

  @paytm-touch
  Scenario: I want to shop
    And I scroll down the screen
    And I start another activity




