class Account
    attr_reader :balance

    def initialize(amount, transaction)
        @balance = amount
        @transaction = transaction

    end

    def deposit(amount)
        @balance += amount
        @transaction.new('credit', @balance)


    end

    def withdraw(debit)
        @balance -= debit
        @transaction.new('debit', @balance)

    end

    def show_balance
        @balance
    end
end