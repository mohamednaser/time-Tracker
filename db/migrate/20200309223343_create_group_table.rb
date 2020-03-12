class CreateGroupTable < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_table do |t|
      t.string :Name
      t.string :Icon 

      t.timestamps
    end
  end
end
