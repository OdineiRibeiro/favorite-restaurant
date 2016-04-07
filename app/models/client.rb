class Client < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_numericality_of :age, greater_than: 0, less_than: 100

  has_many :ratings
end
