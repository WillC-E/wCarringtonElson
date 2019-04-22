class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @name = params[:name]
    @id = params[:id]

  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end


  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  private
  def review_params
    params.require(:review).permit(:author, :products_id, :prodRating, :reviewText, :reviewDate, :profile_id)
  end
end
