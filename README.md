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
  1) go into IRB from the project root file
  2) require the file by typing into the command line, require './lib/bank.rb'
  3) instantiate a new object of bank by typing in bank = Bank.new
  4) enter the amount of money you wish to deposit (for example, 750) by typing in bank.amount_deposited(750)

Story 2.
As a user,
so that I can access my money,
I want to be able to withdraw money.

Instructions:
  1) go into IRB from the project root file
  2) require the file by typing into the command line, require './lib/bank.rb'
  3) instantiate a new object of bank by typing in bank = Bank.new
  4) enter the amount of money you wish to withdraw (for example, 1000) by typing in bank.amount_to_withdraw(1000)

Story 3.
As a user,
so that I can view my account history,
I want to be able to view transactions with corresponding dates and my account balance.

Instructions:
  1) go into IRB from the project root file
  2) require the file by typing into the command line, require './lib/bank.rb'
  3) instantiate a new object of bank by typing in bank = Bank.new
  4) enter the amount of money you wish to withdraw or deposit as per instructions in Story 1 or Story 2. This can be done multiple times to see multiple transactions
  5) enter bank.view_bank_statement to see transaction history


  ---------------------------------------------------------------

  This solution was designed based around 3 user stories, and 3 subsequent user interface methods. As per the above User Stories, the corresponding methods were:

  Story 1: amount_deposited
  Story 2: amount_to_withdraw
  Story 3: view_bank_statement

  Each method in the entire file employed the technique of Test Driven Development combined with the principle of RGF (Red, Green, Refactor).

  The code was intended to be structured in the following classes, each within a file of it's own:

  UserInterface
  Date
  Bank_Account
  Formatting
  *and corresponding Spec files for each Class file

  However, due to the project taking longer than expected, the main class called Bank which was to be split, remained along with the only other class of Date.

------------------------------------------------------------

Tasks not completed

1) Formatting the input arguments to ensure that all inputted integers are displayed as 00.00 as opposed to 0, 00, 00.0 etc

2) Formatting the view_bank_statement so that if no transactions are made for debit when something has been credited, or vice versa, instead of 0, it simply has no character. For example 22/02/2022 || || 500 || 15000 instead of 22/02/2022 || 0 || 500 || 15000



--------------------------------------------------------------

Terminal example of working app

2.6.5 :001 > require './lib/bank.rb'
 => true
2.6.5 :002 > bank = Bank.new
 => #<Bank:0x00007febfa17d818 @date=#<Date:0x00007febfa17d7f0 @date=2020-12-03 09:29:16 +0000>, @balance=0, @transaction_array=[], @deposited=0, @withdrawn=0, @bank_statement_formatting=[["Date || Credit || Debit || Balance"]]>
2.6.5 :003 > bank.amount_to_withdraw(90)
Date || Credit || Debit || Balance
03/12/2020 || 0 || 90 || -90
Date || Credit || Debit || Balance
03/12/2020 || 0 || 90 || -90
 => nil
2.6.5 :004 > bank.amount_to_withdraw(5000)
Date || Credit || Debit || Balance
03/12/2020 || 0 || 5000 || -5090
03/12/2020 || 0 || 90 || -90
Date || Credit || Debit || Balance
03/12/2020 || 0 || 5000 || -5090
03/12/2020 || 0 || 90 || -90
 => nil
2.6.5 :005 > bank.amount_deposited(20000)
Date || Credit || Debit || Balance
03/12/2020 || 20000 || 0 || 14910
03/12/2020 || 0 || 5000 || -5090
03/12/2020 || 0 || 90 || -90
Date || Credit || Debit || Balance
03/12/2020 || 20000 || 0 || 14910
03/12/2020 || 0 || 5000 || -5090
03/12/2020 || 0 || 90 || -90
