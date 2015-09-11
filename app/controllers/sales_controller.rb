class SalesController < ApplicationController
	def create
		user = User.find(session[:user_id])
		product = Product.find(params[:productid])
		product.update_attribute(:sold, true)
		sales = Sale.create(user: user, product: product)

		redirect_to "/users/#{user.id}/show"
	end
end