class Riba < ActiveRecord::Base
  has_many :users
  has_many :locations
  has_many :villages, through: :locations
end
