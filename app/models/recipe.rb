class Recipe < ActiveRecord::Base
  validates_presence_of :content

  belongs_to :dish

  validates_presence_of :dish_id
  validates_associated :dish
end
