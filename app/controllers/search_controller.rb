class SearchController < ActionController::Base

	def create
		endpoint = nil
		if params[:user_id] && params[:description] && params[:title]
			begin
				endpoint = Search.create({
					:user_id => params[:user_id],
					:description => params[:description],
					:title => params[:title],
				})
			rescue => e
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end

	def get_by_user_id
		endpoint = nil
		if params[:user_id]
			begin
				endpoint = Search.where(["user_id = ?", params[:user_id]])
			rescue => e
				endpoint = e.to_s
			end
		end
		render :json => {:data => endpoint}
	end

	def get
		begin
			endpoint = Search.all
		rescue => e
			endpoint = e.to_s
		end
		
		render :json => {:data => endpoint}
	end
end