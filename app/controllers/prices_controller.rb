class PricesController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /prices
  def index
    @prices = Price.all
  end

  # GET /prices/new
  def new
    @price = Price.new
  end

  # GET /prices/1/edit
  def edit
  end

  # POST /prices
  def create
    @price = Price.new(price_params)

    respond_to do |format|
      if @price.save
        format.html { redirect_to prices_path, notice: 'Price was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /prices/1
  def update
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to prices_path, notice: 'Price was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /prices/1
  def destroy
    @price.destroy
    respond_to do |format|
      format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:price).permit(:product_id, :company_id, :price, :starts_at, :end_at)
    end
end
