class CreateCallChargeds < ActiveRecord::Migration[5.0]
  def change
    create_table :call_chargeds do |t|
      t.belongs_to :call_record, index: true
      t.float :charged_value

      t.timestamps
    end
  end
end
