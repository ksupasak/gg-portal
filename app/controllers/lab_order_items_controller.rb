class LabOrderItemsController < ApplicationController
  before_action :set_lab_order_item, only: %i[ show edit update destroy ]

  # GET /lab_order_items or /lab_order_items.json
  def index
    @lab_order_items = LabOrderItem.all
  end

  # GET /lab_order_items/1 or /lab_order_items/1.json
  def show
  end

  # GET /lab_order_items/new
  def new
    @lab_order_item = LabOrderItem.new
  end

  # GET /lab_order_items/1/edit
  def edit
  end

  # POST /lab_order_items or /lab_order_items.json
  def create
    @lab_order_item = LabOrderItem.new(lab_order_item_params)

    respond_to do |format|
      if @lab_order_item.save
        format.html { redirect_to @lab_order_item, notice: "Lab order item was successfully created." }
        format.json { render :show, status: :created, location: @lab_order_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lab_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_order_items/1 or /lab_order_items/1.json
  def update
    respond_to do |format|
      if @lab_order_item.update(lab_order_item_params)
        format.html { redirect_to @lab_order_item, notice: "Lab order item was successfully updated." }
        format.json { render :show, status: :ok, location: @lab_order_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lab_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_order_items/1 or /lab_order_items/1.json
  def destroy
    @lab_order_item.destroy
    respond_to do |format|
      format.html { redirect_to lab_order_items_url, notice: "Lab order item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_order_item
      @lab_order_item = LabOrderItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lab_order_item_params
      params.require(:lab_order_item).permit(:lab_order_id, :module_id, :module_name, :status, :start_at, :stop_at, :note, :transaction_item_id)
    end
end
