require 'account'

describe Account do
  subject(:account) { described_class.new }
  
    it 'has an initial balance of 0' do
      expect(account.balance).to equal(0)
    end


  describe "#deposit" do
    it 'increases balance' do
      subject.deposit(100)
      expect(subject.show_balance).to equal(100)
    end
  end

  describe '#withdraw' do
    it 'can remove money from the balance' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.show_balance).to equal(50)
    end
  end
end
