class Product < ActiveRecord::Base
	belongs_to :user
	has_one :sale

	def self.bought 
		bought = []

		self.all.each do |b|
			bought << b if b.sold == true
		end
		bought
	end

	def self.not_bought
		not_bought = []

		self.all.each do |b|
			not_bought << b if b.sold == false
		end
		not_bought
	end
end

