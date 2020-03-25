
require 'date'

describe ATM do 

  let(:transaction) { double :transaction, type: nil, balance: nil }
  let(:history) { double :history, transactions: [] }
  let(:account) { double :account, amount: 1000, transaction: transaction, history: history }
  let(:statement) { double :statement }
  let(:atm) { ATM.new(account, statement) }


  let(:atm) { ATM.new(account) }

  it "is created with an account" do
    expect(atm.account).to be account
  end

  it "is can instruct a statement to print" do
    expect(statement).to receive(:print_statement)
    atm.show_statement
  end
  it 'allows a user to deposit' do
    amount = 500
    expect(account).to receive(:deposit).with(amount)
    atm.deposit(amount)
  end
  
  it 'allows a user to withdraw' do
    amount = 500
    expect(account).to receive(:withdraw).with(amount)
    atm.withdraw(amount)
  end

end