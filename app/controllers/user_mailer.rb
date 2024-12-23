class UserMailer < ApplicationMailer
    default from:'fashionxtllc@gmail.com'
    #def send_welcome(email, id)
    #  link = ENV['HEROKU_URL'] || 'http://localhost:3000'
    #  mail(to: email, subject: "Welcome", body:"<!DOCTYPE html><body><div>Please click this link to validate your account: #{link}/validation/#{id}  ....</div></body>", content_type: "text/html")
    #end - no email validation needed, will be using sign-in with event360
    
    def client_assigned(email)
     mail(to: email, subject: "Talent Assigned to you", body:"<!DOCTYPE html><body>Hi, you have been assigned a talent for an upcoming event. Please log in to see more details.<div></div></body>", content_type: "text/html")
    end

    def deleted_event(email, event_name, delete_time)
      mail(to: email, subject: "An event you registered for has been deleted.", body:"<!DOCTYPE html><body>Hi, Event #{event_name} has been removed by the organizer at #{delete_time}. Thanks for registering!<div></div></body>", content_type: "text/html")
    end

    #def password_reset(email, reset_link)
    #  mail(to: email, subject: "Password Reset Request", body: "<!DOCTYPE html><body>Hi, a password reset request has been initiated, if this was not done by you, please contact an admin immediately. Please click on the following link to reset your email: #{reset_link} <div></div></body>", content_type:"text/html")
    #end  this behaviour is not implemented currently. for future use.


    def added_comment(email)
      mail(to: email, subject: "Producer has commented on your Talent.", body:"<!DOCTYPE html><body>Hi, A comment has been posted on a talent that has been assigned to you!<div></div></body>", content_type: "text/html")
    end

    #def added_message(email)
    #  mail(to: email, subject: "Producer has sent you a message.", body:"<!DOCTYPE html><body>Hi, A message has been sent to you about an event!<div></div></body>", content_type: "text/html")
    #end - this behaviour is not implemented currently in message controller. for future use.


    #def added_announcement(email)
    #  mail(to: email, subject: "Producer has made an announcement", body:"<!DOCTYPE html><body>Hi, An announcement has been made about an event!<div></div></body>", content_type: "text/html")
    #end


    def form_edited(email, event_name)
      mail(to: email, subject: "New fields added to the #{event_name} form.", body:"<!DOCTYPE html><body>Hi, New Fields have been added to the #{event_name} form that you have submitted!<div></div></body>", content_type: "text/html")
    end
end