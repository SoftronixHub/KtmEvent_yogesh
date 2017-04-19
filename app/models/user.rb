class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
         after_create :send_welcome_email
         before_create:assign_role
   has_many :my_events, class_name: 'Event', foreign_key: 'created_by'
   has_and_belongs_to_many :events
   belongs_to :role, class_name:"Role", foreign_key: "role_id"

 private
 def send_welcome_email
  # Tell the UserMailer to send a welcome email after save
 
	UserMailer.welcome_email(self).deliver_now
 end

 def assign_role 
 
   
 end
end
