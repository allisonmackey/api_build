class DestinationsController < ApplicationController
  
  def index
    @destinations = Destination.all
    json_response(@destinations)
  end

  def show
    @destination = Destination.find(params[:id])
    json_response(@destination)
  end

  def create
    @destination = Destination.create!(destination_params)
    json_response(@destination)
  end

  def update
    @destination = Destination.find(params[:id])
    @destiantion.update(destination_params)
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    @destination.reviews.destroy
    # destroy reviews when destinations are destroyed?
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def destination_params
    params.permit(:city, :country, :description)
  end

end