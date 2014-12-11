#folder: config/locales/route.rb

serverName::Application.routes.draw do

	#URL path like /beer/
	resources :beer do
	
		#URL path like /beer/<beer_type>/
		resources :IPA
		resources :brown_ale
		resources :pilsner
		resources :lager
		resources :lambic
		resources :hefeweizen
		
		#missing the code for error  404
	
	end	
end
	


