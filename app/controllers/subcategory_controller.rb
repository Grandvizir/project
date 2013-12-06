class SubcategoryController < ActionController::Base

	def get
		endpoint = "Empty parameters"
		begin
			endpoint = Subcategory.all
		rescue => e 
			endpoint = e.to_s
		end
		render :json => {:data => endpoint}
	end

	def create
		endpoint = "Empty parameters"
		if params[:name] && params[:category_id]
			begin
				endpoint = Subcategory.create({
					:name => params[:name],
					:category_id => params[:category_id]
				})
			rescue => e 
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end
end