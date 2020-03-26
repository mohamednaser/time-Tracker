require 'rails_helper'

RSpec.describe 'Test Transaction Model ', type: :model do
  before :all do
    @user_obj = User.new(name: 'mohamed').save
    @group_obj = Group.new(name: 'Sports').save
  end

  before :each do
    @transaction_obj = Transaction.new
  end

  describe 'is valid with valid attributes' do
    it 'valid Transaction without groupid' do
      @transaction_obj.authorid = User.first.id
      @transaction_obj.name = 'just test transaction'
      @transaction_obj.hours = 2
      @transaction_obj.minutes = 2

      expect(@transaction_obj).to be_valid
    end

    it 'valid Transaction with groupid' do
      @transaction_obj.authorid = User.first.id
      @transaction_obj.name = 'just test transaction'
      @transaction_obj.hours = 2
      @transaction_obj.minutes = 2
      @transaction_obj.group_id = Group.first.id

      expect(@transaction_obj).to be_valid
    end

    it 'invalid hours limit' do
      @transaction_obj.authorid = User.first.id
      @transaction_obj.name = 'j'
      @transaction_obj.hours = 29
      @transaction_obj.minutes = 2
      expect(@transaction_obj).not_to be_valid
    end

    it 'invalid minutes limit' do
      @transaction_obj.authorid = User.first.id
      @transaction_obj.name = 'j'
      @transaction_obj.hours = 2
      @transaction_obj.minutes = 99
      expect(@transaction_obj).not_to be_valid
    end

    it 'invalid maximum name length ' do
      @transaction_obj.authorid = User.first.id
      @transaction_obj.name = 'j'
      @transaction_obj.amount = 500
      expect(@transaction_obj).not_to be_valid
    end
  end
end
