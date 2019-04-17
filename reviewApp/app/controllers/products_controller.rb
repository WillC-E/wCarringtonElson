class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @reviews = Review.where(:prodID => @product.id)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def edit
  end

    private
  def product_params
    params.require(:product).permit(:productName, :brand, :avgCost, :category, :releaseDate, :description, :prodPhoto)
  end
end
