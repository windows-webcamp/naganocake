class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = Genre.new
    @genres = Genre.with_deleted
  end
  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to admin_genres_path
  end
  def edit
    @genre = Genre.find(params[:id])
  end
  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to admin_genres_path
  end
  def destroy
    	@genre = Genre.find(params[:id])
      @products = @genre.products
      @products.destroy_all
    	@genre.destroy
    	redirect_to admin_genres_path
  end
  def genre_restore
      @genre =  Genre.only_deleted.find(params[:id]).restore
      @products =  Product.only_deleted.where(genre_id: @genre.id)
      @products.each do |product|
        product.restore
      end
      redirect_to admin_genres_path
  end
private
    def genre_params
        params.require(:genre).permit(:genre_name)
    end
end