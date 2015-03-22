##defined method koala to call from users_controller. 
##User.koala takes authentication credentials obtained using omniauth-facebook 
##koala method fetches data from facebooks graph API. gets Facebook ID, first_name, and last_name of currently logged-in user. user_birthday requires review from Facebook.

class User < ActiveRecord::Base
	def self.koala(auth)
		access_token = auth['token']
		facebook = Koala::Facebook::API.new(access_token)
		facebook.get_object("me?fields=id,first_name,last_name")
		
	end
end


