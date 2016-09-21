class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :accountnumber
      t.date :date_dedection
      t.text :discrition
      t.float :deducted_amount
      t.float :balance

      t.timestamps
    end
	 add_foreign_key :Transactions, :Users, column: :balance, primary_key:balance
  end
end
