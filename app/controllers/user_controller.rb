class UserController < ActionController::Base

	def get_by_email_password
		endpoint = "Empty parameters"
		if params[:mail] && params[:password]
			pwd = params[:password] ### DON T FORGET TO HASH
			begin
				endpoint = User.where([
					"mail = ? AND password = ?",
					params[:mail],
					pwd
				])
			rescue => e 
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end

	def get_user_by_id
		endpoint = nil
		if params[:user_id]
			begin
				endpoint = User.find(params[:user_id])
			rescue => e
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end

	def create
		endpoint = nil
		if params[:name] && params[:last_name] && params[:mail] && params[:password]
			pwd = params[:password] ### DON T FORGET TO HASH
			begin
				endpoint = User.create({
					:name => params[:name],
					:last_name => params[:last_name],
					:mail => params[:mail],
					:password => pwd
				})
			rescue => e
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end

	def update
		endpoint = nil
		if params[:user_id] && params[:name] && params[:last_name] && params[:mail] && params[:password]
			pwd = params[:password] ### DON T FORGET TO HASH
			begin
				user = User.find(params[:user_id])
				endpoint = user.update_attributes({
					:name => params[:name],
					:last_name => params[:last_name],
					:mail => params[:mail],
					:password => pwd
				})
			rescue => e
				endpoint = e.to_s
			end		
		end
		render :json => {:data => endpoint}
	end

	

	def delete
		endpoint = nil
		if params[:user_id]
			begin
				endpoint = User.delete(params[:user_id])
			rescue Exception => e
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end

	def is_logged?

	end
end