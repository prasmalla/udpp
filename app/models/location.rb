class Location < ActiveRecord::Base
  belongs_to :village
  belongs_to :riba
end
