##method to post to user's wall, if publish_actions permission were granted through omniauth
##untested

class Post < ActiveRecord: :Base
	def self.koala(WallPost)
		access_token = auth['token']
		facebook = Koala::Facebook::API.new(access_token)
		facebook.put_wall_post("message")
	end
end