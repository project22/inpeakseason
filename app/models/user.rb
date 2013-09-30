class User < ActiveRecord::Base
	has_many :market_comments
	has_many :fav_recipes
	
	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["name"]
			user.email = auth["info"]["email"]
			user.gender = auth["extra"]["raw_info"]["gender"]	
			user.image = auth["info"]["image"]
		end	
	end
end
