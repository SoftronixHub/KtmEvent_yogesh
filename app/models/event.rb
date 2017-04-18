class Event < ApplicationRecord
	validates :title, presence: true
	belongs_to :creator, class_name:"User",foreign_key:"created_by"
	has_and_belongs_to_many :users
	belongs_to :event_location, class_name:"Location", foreign_key:"location_id"

	def is_already_attended?(user)
		self.users.include? user
	end
 
end
