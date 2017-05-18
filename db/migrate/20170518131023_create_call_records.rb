class CreateCallRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :call_records do |t|
      t.belongs_to :user_account, index: true
      t.string :call_destinatio
      t.integer :duration
      t.timestamps :date_time
      t.references :short_code, optional: true
      t.references :isd_tariff, optional: true


      t.timestamps
    end
  end
end
