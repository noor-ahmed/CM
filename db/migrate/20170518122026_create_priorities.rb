class CreatePriorities < ActiveRecord::Migration[5.0]
  def change
    create_table :priorities do |t|
      t.integer :value
      t.references :prioritize, polymorphic: true, index: true

      t.timestamps
    end
  end
end
