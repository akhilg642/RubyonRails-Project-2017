class Line1ItemsController < ApplicationController
  before_action :set_line1_item, only: [:show, :edit, :update, :destroy]

  # GET /line1_items
  # GET /line1_items.json
  def index
    @line1_items = Line1Item.all
  end

  # GET /line1_items/1
  # GET /line1_items/1.json
  def show
  end

  # GET /line1_items/new
  def new
    @line1_item = Line1Item.new
  end

  # GET /line1_items/1/edit
  def edit
  end

  # POST /line1_items
  # POST /line1_items.json
  def create
	  @cart = current_cart
      product1 = Product1.find(params[:product1_id])
      @line1_item = @cart.add_product(product1.id)
	  #@line1_item = @cart.line1_items.build(product1: product1)
	  
    respond_to do |format|
      if @line1_item.save
        format.html { redirect_to @line1_item, notice: 'Line1 item was successfully created.' }
        format.json { render :show, status: :created, location: @line1_item }
      else
        format.html { render :new }
        format.json { render json: @line1_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line1_items/1
  # PATCH/PUT /line1_items/1.json
  def update
    respond_to do |format|
      if @line1_item.update(line1_item_params)
        format.html { redirect_to @line1_item, notice: 'Line1 item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line1_item }
      else
        format.html { render :edit }
        format.json { render json: @line1_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line1_items/1
  # DELETE /line1_items/1.json
  def destroy
    @line1_item.destroy
    respond_to do |format|
      format.html { redirect_to line1_items_url, notice: 'Line1 item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line1_item
      @line1_item = Line1Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line1_item_params
      params.require(:line1_item).permit(:product1_id, :cart_id)
    end
end
