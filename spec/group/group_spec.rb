
require 'rails_helper'

 RSpec.describe 'Test Groups Model ' do
   before :each do
     @group_obj = Group.new
 
   end
 
   describe 'is valid with valid attributes' do
     it 'Create A valid group ' do
       @group_obj.authorid = User.first.id
       @group_obj.name = 'Sports'
 
       expect(@group_obj).to be_valid
     end
 
     it 'invalid group name  ' do
       @group.name = 'as'
 
       expect(@group).not_to be_valid
     end
 
     it 'valid group name  ' do
      @group.name = 'asas'

      expect(@group).to be_valid
    end
 
   end
 end
 