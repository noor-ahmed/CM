class CreateCommunities < ActiveRecord::Migration[5.0]
  def change
    create_table :communities do |t|
      t.string :name
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps
    end
  end
end
