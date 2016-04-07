class Rating < ActiveRecord::Base
  validates_presence_of :rate
  validates_presence_of :bill

  validates_numericality_of :rate, greater_than_or_equal_to: 0, less_than_or_equal_to: 10

  validates_numericality_of :bill, greater_than: 0

  belongs_to :client
  belongs_to :restaurant
  has_many :comments, as: :commentable

  validates_presence_of :client_id, :restaurant_id
  validates_associated :client, :restaurant
end
