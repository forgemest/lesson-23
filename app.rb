require 'rubygems'
require 'sinatra'
# require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

post '/visit' do


@username = params[:username]
@phone = params[:phone]
@pdatetime = params[:datetime]
@barber = params[:barber]
@color = params[:color]

erb "ok, username is #{@username}, #{@phone}, #{@pdatetime}, #{@barber}, #{@color}"

end



