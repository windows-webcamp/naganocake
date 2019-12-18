class SendsController < ApplicationController
	def index
		@send = Send.new
		@sends = Send.all
	end
	def create
		@send = Send.new(send_params)
		@send.user_id = current_user.id
		if @send.save
			redirect_to user_path(current_user)
		else
			render :index
		end
	end
	def edit
		@send = Send.find(params[:id])
	end
	def delete
	end
	def update
		@send = Send.find(params[:id])
		if @send.update(send_params)
			redirect_to sends_path
		else
			render :edit
		end
	end
	private
	def send_params
		params.require(:send).permit(:name, :postcode, :address, :user_id)
	end
	def user_params
		params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email)
	end
end