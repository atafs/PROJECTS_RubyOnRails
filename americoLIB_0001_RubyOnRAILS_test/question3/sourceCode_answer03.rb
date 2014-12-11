class MyController < ApplicationController 
  
	def options 
    
		#Ruby: arrays are created with [] brackets; can have nothing when initialized;
		options = [] 
    
		available_option_keys = [:first_option, :second_option, :third_option] 		#another array
    		all_keys = params.keys.map(&:to_sym) 						#a third array with all the keys turned into symbols
    		set_option_keys = all_keys & available_option_keys 				#placing two arrays in the same one
    		set_option_keys.each do |key| 							#for each (loop) 
      
	 		#the keys are symbols, so it requires :
	 		options[key] = params[:key] 
   		end

		#at the end we get an array with all the keys
		options 
  	end
end 
