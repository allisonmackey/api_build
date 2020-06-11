class ReviewsController < ApplicationController
  def index
    
  end

  def create 
    @review = Review.create!(review_params)
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "You've successfully updated this review!"
      }
    end
  end

  def destroy 
    @review = Review.find(params[:id])
    if @review.destroy
      render status: 200, json: {
        message: "You've successfully DEMOLISHED this review"
      }
    end
  end

  def show
    @review = Review.find(params[:id])
    json_reponse(@review)
  end

  private
  def review_params
    params.permit(:content, :user_id, :destination_id)
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end