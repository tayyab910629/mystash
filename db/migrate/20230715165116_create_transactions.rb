class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :item_description
      t.string :item_tag
      t.date :bought_date
      t.integer :buying_amount
      

      t.timestamps
    end
  end
end
