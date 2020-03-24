require 'transaction'
describe Transaction do
    let(:transaction) {Transaction.new}
  
    it "create the time" do
      expect(transaction.date).to eq Date.today
    end
end