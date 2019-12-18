class Admin::UsersController < ApplicationController
	def edit
		@user = User.find(params[:id])
	end
	def index
		@users = User.with_deleted
	end
	def show
		@user = User.find(params[:id])
		@users = User.with_deleted.first
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to admin_users_path
		else
			render :edit
		end
	end
	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to admin_users_path
	end
	private
	def user_params
		params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email)
	end
end