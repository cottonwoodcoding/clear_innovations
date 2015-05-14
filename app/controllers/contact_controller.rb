class ContactController < ApplicationController
  def contact_us
    unless Rails.env.development?
      ContactMailer.send_contact_info(params[:first_name], params[:last_name], params[:email], params[:phone], params[:body]).deliver
    end
    redirect_to :root
  end
end
