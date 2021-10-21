class LabOrdersController < ApplicationController
  before_action :set_lab_order, only: %i[ show edit update destroy ]

  # GET /lab_orders or /lab_orders.json
  def index
    @lab_orders = LabOrder.all
  end

  # GET /lab_orders/1 or /lab_orders/1.json
  def show
  end

  # GET /lab_orders/new
  def new
    @lab_order = LabOrder.new
  end

  # GET /lab_orders/1/edit
  def edit
  end

  # POST /lab_orders or /lab_orders.json
  def create
    @lab_order = LabOrder.new(lab_order_params)

    respond_to do |format|
      if @lab_order.save
        format.html { redirect_to @lab_order, notice: "Lab order was successfully created." }
        format.json { render :show, status: :created, location: @lab_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lab_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_orders/1 or /lab_orders/1.json
  def update
    respond_to do |format|
      if @lab_order.update(lab_order_params)
        format.html { redirect_to @lab_order, notice: "Lab order was successfully updated." }
        format.json { render :show, status: :ok, location: @lab_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lab_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_orders/1 or /lab_orders/1.json
  def destroy
    @lab_order.destroy
    respond_to do |format|
      format.html { redirect_to lab_orders_url, notice: "Lab order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_order
      @lab_order = LabOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lab_order_params
      params.require(:lab_order).permit(:customer_id, :date, :status, :note)
    end
end
