require 'sinatra'
require 'sendgrid-ruby'
require 'materialize-sass'
include SendGrid


get '/' do
    erb :index
end

post "/" do
   from = Email.new(email: 'tony@rytecare.com')
   to = Email.new(email: 'langgafilms@gmail.com')
   subject = params[:name]
   content = Content.new(type: 'text/html', value: "
    
    here it is
    
       ")
   mail = Mail.new(from, subject, to, content)

   puts ENV["SENDGRID"]

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

   response = sg.client.mail._('send').post(request_body: mail.to_json)

redirect '/'

end

get '/cookies' do
    erb :cookies
end

get '/cakes' do
    erb :cakes
end

get '/muffins' do
    erb :muffins
end