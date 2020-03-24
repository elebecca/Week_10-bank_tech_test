require 'transaction'
describe Transaction do
    type = 'debit'
    balance = 1000
    let(:transaction) { Transaction.new(type, balance) }
  
    it "create the time" do
      expect(transaction.date).to eq Date.today
    end

    it 'created with a trantaction type' do 
        expect(transaction.type).to eq 'debit'
    end

    it 'is created with a remaining balance' do
        expect(transaction.balance).to eq 1000
    end
end