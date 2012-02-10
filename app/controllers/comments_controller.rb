class CommentsController < ApplicationController
	def create
		@deisgn = Deisgn.find(params[:deisgn_id])
		@comment = @deisgn.comments.create(params[:comment])
		redirect_to deisgn_path(@deisgn)
	end
end
