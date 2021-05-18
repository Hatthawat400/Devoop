class ApplicationMailer < ActionMailer::Base

  default from: 'natapapon.r@gmail.com' 

  layout 'mailer'

  def inquire(name, number , current_user,message)

    @name = name
    @number  = number 
    @message = message
    @email = current_user.email
    mail(to:@email,subject: 'Hello_world')

  end

end