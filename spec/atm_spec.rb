
require 'date'

describe ATM do 

  let(:transaction) { double :transaction, type: nil, balance: nil }
  let(:history) { double :history, transactions: [] }
  let(:account) { double :account, amount: 1000, transaction: transaction, history: history }
  let(:atm) { ATM.new(account) }

  it "is created with an account" do
    expect(atm.account).to be account
  end
end