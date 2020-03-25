require 'transaction'
describe Transaction do
    type = 'debit'
    amount = 500
    balance = 1000

    let(:transaction) { Transaction.new(type, amount, balance) }
  
    it "create the time" do
      expect(transaction.date).to eq Date.today
    end

    it 'created with a trantaction type' do 
        expect(transaction.type).to eq 'debit'
    end

    it 'is created with a transaction amount' do
        expect(transaction.amount).to eq 500
    end


    it 'is created with a remaining balance' do
        expect(transaction.balance).to eq 1000
    end
end