require 'mail'

Mail.defaults do
  delivery_method :smtp, {
      :port => 587,
      :address => 'smtp.mailgun.org',
      :user_name =>  # secure username,
      :password =>  # secure account password,
  }
end

mail = Mail.deliver do
  to  # user's email address
  from  # mailgun SMTP credential
  subject 'Hello'
  
  text_part do
    body 'Testing some Mailgun awesomeness'
  end
end

