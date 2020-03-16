class CreateTransactionsTable < ActiveRecord::Migration[5.2]
  def change
       create_table :transactions do |t|
        t.integer :authorid
        t.string :name
        t.integer :amount
        t.integer :group_id
        
        t.timestamps 
     end

     add_foreign_key :users, column: :authorid

  end
end
 
