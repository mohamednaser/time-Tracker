class CreateTransactionsTable < ActiveRecord::Migration[5.2]
  def change
       create_table :transactions do |t|
        t.integer :authorid
        t.string :name
        t.string :amount
        t.integer :groupid

        add_foreign_key :users, column: :authorid
        
        t.timestamps 
     end
  end
end
 
