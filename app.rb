require 'sinatra'
require 'sendgrid-ruby'
require 'materialize-sass'


get '/' do
    erb :index
end

# post "/" do

# end

get '/cookies' do
    erb :cookies
end

get '/cakes' do
    erb :cakes
end

get '/muffins' do
    erb :muffins
end