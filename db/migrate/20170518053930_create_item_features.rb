class CreateItemFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :item_features do |t|
      t.string :pulse
      t.float :tariff_on_net
      t.float :tariff_off_net
      t.float :tariff_on_net_on_atw
      t.float :tariff_off_net_on_atw
      t.string :applicable_time_window
      t.string :call_destination
      t.references :itemable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
