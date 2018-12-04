require 'mail'

Mail.defaults do
  delivery_method :smtp, {
      :port => 587,
      :address => 'smtp.mailgun.org',
      :user_name => 'postmaster@sandbox574476274f9e48dfa44d76627fcf1363.mailgun.org',
      :password => '045ae7d39dd83d3de01b0569edb8e1fd-52cbfb43-e637128d',
  }
end

mail = Mail.deliver do
  # ryandaley321@gmail.com
  to 'ryandaley321@gmail.com'
  from 'austin@sandbox574476274f9e48dfa44d76627fcf1363.mailgun.org'
  subject 'Hello'
  
  text_part do
    body 'Testing some Mailgun awesomeness'
  end
end

