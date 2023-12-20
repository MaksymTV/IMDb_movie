class WelcomeMailer < ActionMailer::Base
    default from: "noreply@example.com"
  
    def welcome_email(user)
      @user = user
  
      mail to: user.email, subject: "Welcome to our website!"
    end
  end
  