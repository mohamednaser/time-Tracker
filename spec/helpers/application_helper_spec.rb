require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#seconds_to_hms' do
    it 'Success Convert Seconds Success' do
      expect(helper.seconds_to_hms(1200)).to eq('00:20:00')
    end
    it 'Success Convert default Seconds ' do
      expect(helper.seconds_to_hms).to eq('00:09:15')
    end
  end

  describe '#calculate_total_transactions_duration' do
    it 'Success Calculate Total' do
      User.new(name: 'mohamed').save

      Transaction.new(authorid: User.first.id, name: 'first transaction', amount: 55).save
      Transaction.new(authorid: User.first.id, name: 'second transaction', amount: 65).save

      expect(helper.calculate_total_transactions_duration(Transaction.all)).to eq(nil)
    end
  end
end
