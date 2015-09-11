class ProductsController < ApplicationController

	def create
		user = User.find(params[:userid])
		product = Product.create(user: user, product: params[:product], amount: params[:amount], sold: false)
		redirect_to "/users/#{user.id}/show"
	end

	def show 
		@products = Product.all 
	end

	def destroy 
		product = Product.find(params[:productid])
		user = User.find(current_user.id)
		product.destroy

		redirect_to "/users/#{user.id}/show"
	end
end