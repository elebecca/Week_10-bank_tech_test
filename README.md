# Practice Technical Test: Bank
### Makers Academy Week 10

### Instructions

**Requirements**
* You should be able to interact with the your code via a REPL like IRB or the JavaScript console
  * You don't need to implement a command line interface that takes input from STDIN
* Must have features for deposits and withdrawal
* Must have a feature to display account statement (date, amount, balance)
* Data can be kept in memory (it doesn't need to be stored to a database or anything)

**Acceptance criteria**
* Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:

```
date       || credit  || debit  || balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00

```

**Classes and Methods**

```
| Classes:         | Instance:                                          | Methods:
| ---------------- | -------------------------------------------------- |------------------------------------------  
| Acount:          | @balance, @transaction,@history                    | deposit, withdraw                                       
| Transaction:     | @date, @type, @balance, @amout                     |
| History:         | @transaction                                       | add_transaction
| Statment:        | @history                                           | print_statement(header, credit, debit)
| ATM:             | @accont, @statment                                 | show_statment(deposit, withdraw)
```

**Functionality**

```
:001 >require './lib/account.rb'
=> true
:002 > require './lib/atm.rb'
=> true
:003 >require './lib/transaction.rb'
=> true
:004 >require './lib/statement.rb'
=> true
:005 > require './lib/history.rb'
=> true
:006 > atm = ATM.new(Account.new(0, Transaction, History.new), Statement)
=> ##<ATM:0x00007fe65309b2a8 @account=#<Account:0x00007fe65309b2d0 @balance=0, @transaction=Transaction, @history=#<History:0x00007fe65309b320 @transactions=[]>>, @statement=Statement> 
:007 > atm.deposit(1000)
=> 1000
:008 > atm.withdraw(500)
=> 500
:009 > atm.show_statement
date || credit || debit || balance
26/03/2020 || || 1000.00 || 1000.00
26/03/2020 || 500.00 || || 500.00
```