require 'rails_helper'

RSpec.describe 'Test Groups Model ', type: :model do
  before :each do
    @group_obj = Group.new
  end

  describe 'is valid with valid attributes' do
    it 'Create A valid group ' do
      @group_obj.name = 'Sports'

      expect(@group_obj).to be_valid
    end

    it 'invalid group name  ' do
      @group_obj.name = 'as'
      expect(@group_obj).not_to be_valid
    end
  end
end
