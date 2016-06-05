class Village < ActiveRecord::Base
  has_many :locations
  has_many :ribas, through: :locations
end
