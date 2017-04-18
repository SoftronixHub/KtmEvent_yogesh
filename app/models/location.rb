class Location < ApplicationRecord
     has_many :events, class_name:"Event", foreign_key:"location_id"
end
