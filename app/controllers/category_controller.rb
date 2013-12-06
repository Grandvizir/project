class CategoryController < ActionController::Base
	
	def get
		endpoint = "Empty parameters"
		begin
			endpoint = Category.all
		rescue => e 
			endpoint = e.to_s
		end
		render :json => {:data => endpoint}
	end

	def create
		endpoint = "Empty parameters"
		if params[:name]
			begin
				endpoint = Category.create({
					:name => params[:name]
				})
			rescue => e 
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end
end