require 'account'

describe Account do
  subject(:account) { described_class.new }
  
    it 'has an initial balance of 0' do
      expect(account.balance).to equal(0)
    end
end

describe "#deposit" do
  it "increases balance" do
   subject.deposit(100)
   expect(subject.show_balance).to equal(100)
  end
end
