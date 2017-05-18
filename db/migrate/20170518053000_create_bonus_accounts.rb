class CreateBonusAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bonus_accounts do |t|
      t.float :da_val_available
      t.float :da_val_change
      t.float :da_val_before
      t.belongs_to :user_account, index: true

      t.timestamps
    end
  end
end
