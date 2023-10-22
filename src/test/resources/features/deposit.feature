#Pecthgamon Sangnual 6410406819
Feature: deposit
  As a customer
  I want to withdraw from my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

  Scenario: Deposit to ATM
    When I deposit 50 to ATM
    Then my account balance is 250
  Scenario: Deposit to ATM multiple times
    When I deposit 50 to ATM
    And  I deposit 100 to ATM
    Then my account balance is 350

