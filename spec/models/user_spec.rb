require 'rails_helper'

RSpec.describe 'Test Users Model ', type: :model do
  before :each do
    @user_obj = User.new
  end

  describe 'is valid with valid attributes' do
    it 'Create A valid user ' do
      @user_obj.name = 'Mohamed Ahmed'

      expect(@user_obj).to be_valid
    end

    it 'invalid minimum name length ' do
      @user_obj.name = 'as'
      expect(@user_obj).not_to be_valid
    end

    it 'invalid maximum name length ' do
      @user_obj.name = 'asasd' * 50
      expect(@user_obj).not_to be_valid
    end
  end
end
