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
