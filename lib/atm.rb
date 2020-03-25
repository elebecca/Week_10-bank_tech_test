class ATM
    attr_reader :account
  
    def initialize(account, statement)
      @account = account
      @statement = statement
    end
  
    def deposit(amount)
      @account.deposit(amount)
    end
  
    def withdraw(amount)
      @account.withdraw(amount)
    end
  
    def show_statement
      @statement.new(@account.history).print_statement
    end
  end