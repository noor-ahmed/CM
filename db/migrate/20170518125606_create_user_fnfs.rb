class CreateUserFnfs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_fnfs do |t|
      t.belongs_to :user_account, index: true
      t.string :fnf_no

      t.timestamps
    end
  end
end
