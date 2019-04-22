class ProductsController < ApplicationController
  def index
    @cat = params[:category]
    @products = Product.where(:category => @cat)
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    #@reviews = Review.where(:products_id => @product.id)
    @review = Review.joins(:profile).where(:products_id => @product.id)

    
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

  def search
    @products = if params[:term]
      Product.where('productName LIKE ?', "%#{params[:term]}")
      else
        Product.all
      end

  end


    private
  def product_params
    params.require(:product).permit(:productName, :brand, :avgCost, :category, :releaseDate, :description, :prodPhoto)
  end
end
