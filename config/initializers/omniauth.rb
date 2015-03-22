##used Omniauth and configured facebook as provider. Passing in App ID and App Secret through environment variables and added required scope.

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'],
			 {:scope =>['public_profile', 'user_birthday', 'publish_actions'] }
end	