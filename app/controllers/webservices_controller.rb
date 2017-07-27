class WebservicesController < ApplicationController
	before_action :check_login, except: [:signin,:signup,:update_photos,:update_address]
	
	def check_login
		if current_user.nil?
			render json: { :message => 'Faça o login para continuar' }, status: 401
		end
	end

end
