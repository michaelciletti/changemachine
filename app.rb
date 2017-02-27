require "sinatra"
require_relative 'cashregister.rb'
enable :sessions

get "/" do
	erb :coins
end

post "/change_display" do
	total = params[:change_input].to_i
	returned_change = makechange(total)
	erb :display, :locals => {:total => returned_change}
end


