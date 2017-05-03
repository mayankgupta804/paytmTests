Feature: Facebook Login Feature
  As a user I should be able to log into my account.

  Background: Login
    Given I am on the login page
    When I decide to log into my account

  @paytmLogin-facebook
  Scenario: I want to log into my account through facebook
    And I tap on facebook button
    And I enter my email or phone number as 7204515609
    And I enter my facebook password as dcba321
    And I tap on facebook login button
    And I tap on continue button