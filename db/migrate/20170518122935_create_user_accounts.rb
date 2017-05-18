class CreateUserAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_accounts do |t|
      t.string :name
      t.string :phone_no, index: true
      t.float :acc_val_before

      t.timestamps
    end
  end
end
