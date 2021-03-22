class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :ac_no
      t.string :ac_type
      t.datetime :opening_date
      t.datetime :closing_date
      t.integer :balance
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end

 
end
