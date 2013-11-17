class AddAdressToItems < ActiveRecord::Migration
  def change
    add_column :items, :adress, :text
  end
end
