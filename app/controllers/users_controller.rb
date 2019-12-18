class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = current_user_id
		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end
	end

    def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to root_path
	end

	private
	def user_params
		params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email)
	end


end