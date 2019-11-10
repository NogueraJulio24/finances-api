class RevenuesController < ApplicationController
  before_action :set_revenue, only: [:show, :update, :destroy]

  # GET /revenues
  def index
    @revenues = Revenue.all

    render json: @revenues
  end

  # GET /revenues/1
  def show
    render json: @revenue
  end

  # POST /revenues
  def create
    @revenue = Revenue.new(revenue_params)

    if @revenue.save
      render json: @revenue, status: :created, location: @revenue
    else
      render json: @revenue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /revenues/1
  def update
    if @revenue.update(revenue_params)
      render json: @revenue
    else
      render json: @revenue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /revenues/1
  def destroy
    @revenue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue
      @revenue = Revenue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def revenue_params
      params.require(:revenue).permit(:date, :description, :type, :amount)
    end
end
