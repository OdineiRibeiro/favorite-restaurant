class:restaurants Dish < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :

  has_many :restaurants
  belongs_to :restaurants
  has_one :recipe

  validate :validate_presence_of_more_than_one_restaurante

  private

  def validate_presence_of_more_than_one_restaurante
    errors.add("restaurantes",
          "deve haver ao menos um restaurante") if restaurantes.empty?
  end
end
