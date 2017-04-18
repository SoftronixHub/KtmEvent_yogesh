class UserMailer < ApplicationMailer
	default from: 'info@ktmevent.com.np'

	def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
