class Statement
    attr_reader :history
  
    def initialize(history)
      @history = history
    end
  
    def print_statement
      header
      @history.transactions.each do |transaction|
        transaction.type == 'credit' ? print_debit(transaction) : print_credit(transaction)
      end
    end
  
    private
  
    def print_credit(transaction)
      puts "#{date_format(transaction.date)} || #{'%.2f' % transaction.amount} || || #{'%.2f' % transaction.balance}"
    end
  
    def print_debit(transaction)
      puts "#{date_format(transaction.date)} || || #{'%.2f' % transaction.amount} || #{'%.2f' % transaction.balance}"
    end
  
    def date_format(date)
      date.strftime("%d/%m/%Y")
    end
  
    def header
      puts "date || credit || debit || balance\n"
    end
  end