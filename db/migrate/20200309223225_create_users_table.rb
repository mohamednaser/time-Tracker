class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users_table do |t|
      t.string :Name
      t.timestamps
    end
  end
end
