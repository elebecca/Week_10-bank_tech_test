class Account
    attr_reader :balance, :history
  
    def initialize(amount, transaction, history)
      @balance = amount
      @transaction = transaction
      @history = history
    end
  
    def deposit(amount)
      @balance += amount
      @history.add_transaction(@transaction.new('credit', amount, @balance))
      @balance
    end
  
    def withdraw(amount)
      raise 'You do not have the funds' if @balance < amount
      @balance -= amount
      @history.add_transaction(@transaction.new('debit', amount, @balance))
      @balance
    end
  end