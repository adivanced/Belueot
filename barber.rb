require 'sinatra'
get "/" do
	erb :index
end
post "/" do
	@username=params[:name]
	@phone=params[:telephon]
	@date=params[:date]
	@title="thanks for booking!"
	@message="we'll call ya on this phone:#{@phone} before your haircut, we'll call ya #{@username} and we'll remid you to come to us at#{@date}"	
	f=File.open "./public/users.txt","a"
	f.write	"clients name:#{@username}, his phne nombur: #{@phone}, date is #{@date}===================="
	f.close
		erb :message	
	
end




