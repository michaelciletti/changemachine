require "sinatra"
require_relative 'cashregister.rb'
enable :sessions

get "/" do
	erb :coins
end

post "/change_display" do
	total = params[:change_input].to_i
	session[:total] = total
	erb :display, :locals => {:total => session[:total]}
end


