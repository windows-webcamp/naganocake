class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_paranoid
  has_many :orders
  has_many :sends
  has_many :carts



  def update_without_current_password(params, *options)
  	params.delete(:current_password)
  	if params[:password].blank? && params[:password_confirmation].blank?
  		params.delete(:password)
  		params.delete(:password_confirmation)
    end
    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
  def self.search(search) #self.はUser.を意味する
    if search
     where(['username LIKE ?', "%#{search}%"]) #検索とuseanameの部分一致を表示。
    else
     all #全て表示させる
    end
  end
end