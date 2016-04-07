class AddColumnAboutToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :about, :text, limit: 500
  end
end
