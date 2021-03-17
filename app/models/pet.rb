class Pet < ApplicationRecord
  belongs_to :person
  belongs_to :pet_food
end
