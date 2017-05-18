class CreateAccumulators < ActiveRecord::Migration[5.0]
  def change
    create_table :accumulators do |t|
      t.float :acc_val_change
      t.float :acc_val_available
      t.float :acc_val_before
      t.references :imageable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
