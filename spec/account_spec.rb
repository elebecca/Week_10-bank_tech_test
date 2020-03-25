require 'account'

describe Account do
  balance = 1000
  amount = 500

  let(:transaction) { double :transaction, type: nil, balance: nil }
  let(:account) { Account.new(balance, transaction) }

  
    it 'has an initial balance of 0' do
      expect(account.balance).to equal(1000)
    end

    before :each do
      allow(transaction).to receive(:new)
    end


    describe '#deposit' do
      it 'credits a deposited amount to the balance' do
        expect { account.deposit(amount) }.to change {
          account.balance
        }.by 500
      end

      it 'creates a new transaction' do
        expect(transaction).to receive(:new)
        account.deposit(amount)

      end
    end

    describe '#withdraw' do
      it 'debits a withdrawn amount from the balance' do
        expect { account.withdraw(amount) }.to change {
          account.balance
          }.by(- 500)
      end	    

      it 'creates a new transaction' do
        expect(transaction).to receive(:new)
        account.deposit(amount)
    end
  end
end
