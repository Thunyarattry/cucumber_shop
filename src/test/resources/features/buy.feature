Feature: Buy products
    As a customer
    I want to buy products

    Background:
        Given the store is ready to service customers
        And a product "Bread" with price 20.50 and stock of 10 exists
        And a product "Jam" with price 80.00 and stock of 20 exists
        And a product "Butter" with price 100.00 and stock of 20 exists

    Scenario: Buy one product
        When I buy "Bread" with quantity 2
        Then total should be 41.00

    Scenario: Buy multiple products
        When I buy "Bread" with quantity 2
        And I buy "Jam" with quantity 1
        And I buy "Butter" with quantity 4
        Then total should be 521.00

    Scenario: Not enough stock
        When I buy "Bread" with quantity 20
        Then Error "Cut Stock: Bread"