
class Transaction
    attr_reader :date, :type, :balance
  
    def initialize(type, balance)
        @date, @type, @balance = Date.today, type, balance
    end
  end