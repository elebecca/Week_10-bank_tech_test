require 'date'

describe Statement do

  let(:transaction) {double :transaction, 
                            date: Date.today, 
                            type: 'debit', 
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
        "date || credit || debit || balance\n2017-11-27 || || 500 || 1500\n"
        ).to_stdout
        end
    end

end