require 'sinatra'
require 'mandrill'

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
