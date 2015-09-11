class UsersController < ApplicationController

	def create
		user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])

		if user.errors
			flash[:errors] = user.errors.full_messages
			redirect_to "/"
		else
			redirect_to "/"
		end
	end

	def show
		@user = User.find(params[:userid])
		@sales = Sale.where(user: @user.id)
		@products = Product.where(user: @user.id)
		@total_amount = 0
		@total_amount2 = 0
	end

end