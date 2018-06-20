class PizzaCartsController < ApplicationController
  before_action :set_pizza_cart, only: [:show, :edit, :update, :destroy]

  # GET /pizza_carts
  # GET /pizza_carts.json
  def index
    @pizza_carts = PizzaCart.all
  end

  # GET /pizza_carts/1
  # GET /pizza_carts/1.json
  def show
  end

  # GET /pizza_carts/new
  def new
    @pizza_cart = PizzaCart.new
  end

  # GET /pizza_carts/1/edit
  def edit
  end

  # POST /pizza_carts
  # POST /pizza_carts.json
  def create
    @pizza_cart = PizzaCart.new(pizza_cart_params)

    respond_to do |format|
      if @pizza_cart.save
        format.html { redirect_to @pizza_cart, notice: 'Pizza cart was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_cart }
      else
        format.html { render :new }
        format.json { render json: @pizza_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_carts/1
  # PATCH/PUT /pizza_carts/1.json
  def update
    respond_to do |format|
      if @pizza_cart.update(pizza_cart_params)
        format.html { redirect_to @pizza_cart, notice: 'Pizza cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_cart }
      else
        format.html { render :edit }
        format.json { render json: @pizza_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_carts/1
  # DELETE /pizza_carts/1.json
  def destroy
    @pizza_cart.destroy
    respond_to do |format|
      format.html { redirect_to pizza_carts_url, notice: 'Pizza cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_cart
      @pizza_cart = PizzaCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_cart_params
      params.require(:pizza_cart).permit(:cart, :pizza_id)
    end
end
