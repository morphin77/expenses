class ContractorItemsController < ApplicationController
  before_action :set_contractor_item, only: [:show, :edit, :update, :destroy]

  # GET /contractor_items
  # GET /contractor_items.json
  def index
    @contractor_items = ContractorItem.all
  end

  # GET /contractor_items/1
  # GET /contractor_items/1.json
  def show
  end

  # GET /contractor_items/new
  def new
    @contractor_item = ContractorItem.new
  end

  # GET /contractor_items/1/edit
  def edit
  end

  # POST /contractor_items
  # POST /contractor_items.json
  def create
    @contractor_item = ContractorItem.new(contractor_item_params)

    respond_to do |format|
      if @contractor_item.save
        format.html { redirect_to @contractor_item, notice: 'Contractor item was successfully created.' }
        format.json { render :show, status: :created, location: @contractor_item }
      else
        format.html { render :new }
        format.json { render json: @contractor_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractor_items/1
  # PATCH/PUT /contractor_items/1.json
  def update
    respond_to do |format|
      if @contractor_item.update(contractor_item_params)
        format.html { redirect_to @contractor_item, notice: 'Contractor item was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractor_item }
      else
        format.html { render :edit }
        format.json { render json: @contractor_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractor_items/1
  # DELETE /contractor_items/1.json
  def destroy
    @contractor_item.destroy
    respond_to do |format|
      format.html { redirect_to contractor_items_url, notice: 'Contractor item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor_item
      @contractor_item = ContractorItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractor_item_params
      params.require(:contractor_item).permit(:contact_person_name, :position, :email, :phone, :comment)
    end
end
