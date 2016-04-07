class AddColumnSpecialityToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :speciality, :string, limit: 40
  end
end
