class ContactMailer < ActionMailer::Base
  default :from => 'info@clearinnovations.net'
  include SendGrid

  def send_contact_info(first_name, last_name, email, phone, body)
    @first_name = first_name
    @last_name = last_name
    @phone = phone
    @email = email
    @body = body
    mail(:to => 'info@clearinnovations.net', :subject => "#{first_name} #{last_name} has a question.")
  end

end
