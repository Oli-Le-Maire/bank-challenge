Summary of what this code is going to be executing

Bank tech test
Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Specification
Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

User Stories

Story 1.
As a user,
so that I can keep my money safe,
I want to be able to deposit money into my bank account.

Instructions:
a) for use in IRB
  1) go into IRB from the project root file
  2) require the file by typing into the command line, require './lib/bank.rb'
  3) instantiate a new object of bank by typing in bank = Bank.new
  4) enter the amount of money you wish to deposit by typing in bank.

Story 2.
As a user,
so that I can access my money,
I want to be able to withdraw money.


Story 3.
As a user,
so that I can view my account history,
I want to be able to view transactions with corresponding dates and my account balance.
