class CreateFnfs < ActiveRecord::Migration[5.0]
  def change
    create_table :fnfs do |t|
      t.integer :no_of_fnf
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps
    end
  end
end
