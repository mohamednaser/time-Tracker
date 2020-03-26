require 'rails_helper'

RSpec.describe TransactionHelper, type: :helper do
  describe '#available_group_dropdown' do
    it 'Success get available groups' do
      available_groups = Group.all.collect { |p| [p.name, p.id] } << ['Not set', nil]
      expect(helper.available_group_dropdown).to eq(available_groups)
    end
    it 'failed get available groups' do
      expect(helper.available_group_dropdown).not_to eq(%w[name id])
    end
  end
end
