class DealsController < ApplicationController

  def index
    @deals = Deal.all
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    if @deal.save
      redirect_restaurant_path(@deal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def deal_params
    params.require(:deal).permit(:name, :category, :price, :description, :image, :url, :submission_date, :start_date, :end_date, :user_id, :business_id)
  end
end
