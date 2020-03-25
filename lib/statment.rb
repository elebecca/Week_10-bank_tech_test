class Statement
    attr_reader :history
  
    def initialize(history)
      @history = history
    end

    def print_statement
        statement = "date || credit || debit || balance\n"
        @history.transactions.each do |transaction|
          if transaction.type == 'credit'
          statement += "#{transaction.date} || #{transaction.amount} ||  || #{transaction.balance}\n"
          else
          statement += "#{transaction.date} || || #{transaction.amount} || #{transaction.balance}\n"
          end
        end
        puts statement
      end
    end
    
end 