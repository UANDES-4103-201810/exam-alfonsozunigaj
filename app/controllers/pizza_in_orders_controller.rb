class PizzaInOrdersController < ApplicationController
  before_action :set_pizza_in_order, only: [:show, :edit, :update, :destroy]

  # GET /pizza_in_orders
  # GET /pizza_in_orders.json
  def index
    @pizza_in_orders = PizzaInOrder.all
  end

  # GET /pizza_in_orders/1
  # GET /pizza_in_orders/1.json
  def show
  end

  # GET /pizza_in_orders/new
  def new
    @pizza_in_order = PizzaInOrder.new
  end

  # GET /pizza_in_orders/1/edit
  def edit
  end

  # POST /pizza_in_orders
  # POST /pizza_in_orders.json
  def create
    @pizza_in_order = PizzaInOrder.new(pizza_in_order_params)

    respond_to do |format|
      if @pizza_in_order.save
        format.html { redirect_to @pizza_in_order, notice: 'Pizza in order was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_in_order }
      else
        format.html { render :new }
        format.json { render json: @pizza_in_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_in_orders/1
  # PATCH/PUT /pizza_in_orders/1.json
  def update
    respond_to do |format|
      if @pizza_in_order.update(pizza_in_order_params)
        format.html { redirect_to @pizza_in_order, notice: 'Pizza in order was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_in_order }
      else
        format.html { render :edit }
        format.json { render json: @pizza_in_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_in_orders/1
  # DELETE /pizza_in_orders/1.json
  def destroy
    @pizza_in_order.destroy
    respond_to do |format|
      format.html { redirect_to pizza_in_orders_url, notice: 'Pizza in order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_in_order
      @pizza_in_order = PizzaInOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_in_order_params
      params.require(:pizza_in_order).permit(:order_id, :pizza_id)
    end
end
