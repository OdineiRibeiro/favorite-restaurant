class Restaurant < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :speciality
  validates_presence_of :about

  validates_uniqueness_of :name
  validates_uniqueness_of :address

  has_many :ratings
  has_many :dishes
  has_many :comments, as: :commentable

  belongs_to :dishes
end
