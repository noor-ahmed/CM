class CreateShortCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :short_codes do |t|
      t.string :code_name

      t.timestamps
    end
  end
end
