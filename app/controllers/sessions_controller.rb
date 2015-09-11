class SessionsController < ApplicationController
	def create
		user = User.find_by_email(params[:email])
		puts params[:password]
		if user
			puts 'imasldfjas dflasjkdfas laskdjf'
			session[:user_id] = user.id
			redirect_to "/users/#{user.id}/show"
		else
			flash[:loginerror] = "Invalid Login"
			redirect_to "/"
		end
	end

	def destroy 
		session[:user_id] = nil
		redirect_to "/"
	end
end


