class Account
    attr_reader :balance

    def initialize(balance = 0)
        @balance = balance
    end

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
        raise 'You do not have the funds' if @balance < amount
    end

    def show_balance
        @balance
    end
end