class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :description
      t.string :text
      t.integer :price_per_day, default: 0

      t.timestamps
    end
  end
end
