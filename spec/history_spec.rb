require 'history'

describe History do
    let (:history) { History.new }

    it 'history is empty' do
        expect(history.transaction).to be_empty
    end
end