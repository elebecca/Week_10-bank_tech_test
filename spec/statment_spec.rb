require 'date'

describe Statement do

  let(:transaction) {double :transaction, 
                            date: Date.parse('25/03/2020'), 
                            type: 'credit', 
                            amount: 500, 
                            balance: 1500
                    }
  let(:history) { double :history, transactions: [transaction] }
  let(:statement) { Statement.new(history) }

  it 'is created with a account history' do
    expect(statement.history).to eq history
  end

  describe '#print_statement' do
    it 'prints the account information for the user to see' do
        expect { statement.print_statement }.to output(
        "date || credit || debit || balance\n25/03/2020 || || 500.00 || 1500.00\n"
        ).to_stdout
        end
    end

end