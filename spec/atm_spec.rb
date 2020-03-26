
require 'date'

describe ATM do
  let(:transaction) { double :transaction, type: nil, balance: nil }
  let(:history) { double :history, transactions: [] }
  let(:account) { double :account, amount: 1000, transaction: transaction, history: history }
  let(:statement) { double :statement, print_statement: nil }
  let(:new_statement) { double :statement }
  let(:atm) { ATM.new(account, statement) }

  it 'is created with an account' do
    expect(atm.account).to be account
  end

  it 'it can instruct a statement to print' do
    allow(statement).to receive(:new).with(history).and_return(new_statement)
    expect(new_statement).to receive(:print_statement)
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