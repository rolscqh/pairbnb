class UsersController < ApplicationController
	before_action :require_login

	def edit
	@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update
		redirect_to user_path(@users)
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy	
		redirect_to root_path
	end

end
