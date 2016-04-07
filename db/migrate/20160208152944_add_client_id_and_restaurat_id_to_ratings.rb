class AddClientIdAndRestauratIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :client_id, :integer
    add_column :ratings, :restaurant_id, :integer
  end
end
