class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :Name
      t.integer :accountnumber
      t.date :date_issued
      t.timestamps
    end
	 add_foreign_key :User, :Transaction, column: :accountnumber, primary_key:accountnumber
  end
end
