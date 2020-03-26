require 'rails_helper'

RSpec.describe 'Test ApplicationHelper' do

  describe 'Check transaction_group_icon function' do
    it 'with a valid image' do
      
      @transaction_obj.authorid = User.first.id
      @transaction_obj.name = 'just test transaction'
      @transaction_obj.hours = 2
      @transaction_obj.minutes = 2

      expect(@group_obj).to be_valid
    end

    it 'invalid group name  ' do
      @group_obj.name = 'as'
      expect(@group_obj).not_to be_valid
    end
  end
end
