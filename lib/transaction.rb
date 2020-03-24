
class Transaction
    attr_reader :date
  
    def initialize
      @date = Date.today
    end
  end