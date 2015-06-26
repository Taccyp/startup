require 'sinatra'
require 'mandrill'

get '/' do
  erb :index
end

get '/index' do
  erb :index
end

get '/contact' do
  erb :contact
end

get '/philosophy' do
  erb :philosophy
end

get '/testimonials' do
  erb :testimonials
end

post '/contact_submit' do
  puts params.inspect
  @message= params[:message]
  @name = params[:name]
  @email = params[:email]



m = Mandrill::API.new(ENV['mandrill_api'])
message = {
  :subject=> "Customer-form",
  :from_name=> @name,
  :text=> @message,
  :to=>[{:email=> "pgk4526@gmail.com" , :name=> "Start-Up Crew"}],
  :from_email=> @email,
}
  sending = m.messages.send message
  puts sending
  erb :contact_submit
end

