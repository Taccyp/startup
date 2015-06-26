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

post '/submission' do
    first_contact= <<CONTACT
    Congratulations on signing up for our award winning service! You've taken the first step towards starting your
very own business. Our team of highly experienced start up experts will now review you submission, and will be contacting you
shortly. They will then work with you to come up with a business idea you'll love and excel at. Thank you for choosing cool biz
thingy, as we value the trust you are placing in us.
Sincerely,
    John Smith
    Founder of UpStarted.com
CONTACT

    m = Mandrill::API.new
    message = {
    :subject=> "Congratulations for you first step to Start Up success!",
    :from_name=> "UpStarted.com",
    :text=>first_contact,
    :to=>[{:email=> params[:email], :name=> params[:first_name]+ " " + params[:last_name]}],
    :from_email=>"johnsmith@UpStarted.com"
    }
    puts params[:email]
    sending = m.messages.send message
    puts sending
    erb :submission
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

