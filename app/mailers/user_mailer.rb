class UserMailer < ApplicationMailer
  default from: "contact@samplestoreapp.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from    => email,
         :to      => 'tyler@tyler-nixon.com',
         :subject => "A new contact form message from #{name}")
  end
end
