## index method points user to the index view: the first page that the user sees
## login method redirects user from the auth/facebook/callback url, after authentication is granted

class UsersController < ApplicationController

	def index
		
	end

	def login
		@user = User.koala(request.env['omniauth.auth']['credentials'])
	end

end