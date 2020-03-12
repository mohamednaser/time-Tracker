class CreateTransactionsTable < ActiveRecord::Migration[5.2]
  def change
       create_table :transactions_table do |t|
        t.integer :Authorid
        t.string :Name
        t.string :Amount
        t.integer :Groupid

        add_foreign_key :users, column: :Authorid
        
        t.timestamps 
     end
  end
end
 
