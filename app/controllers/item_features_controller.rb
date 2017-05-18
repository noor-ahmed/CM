class ItemFeaturesController < ApplicationController
  before_action :set_item_feature, only: [:show, :edit, :update, :destroy]

  # GET /item_features
  # GET /item_features.json
  def index
    @item_features = ItemFeature.all
  end

  # GET /item_features/1
  # GET /item_features/1.json
  def show
  end

  # GET /item_features/new
  def new
    @item_feature = ItemFeature.new
  end

  # GET /item_features/1/edit
  def edit
  end

  # POST /item_features
  # POST /item_features.json
  def create
    @item_feature = ItemFeature.new(item_feature_params)

    respond_to do |format|
      if @item_feature.save
        format.html { redirect_to @item_feature, notice: 'Item feature was successfully created.' }
        format.json { render :show, status: :created, location: @item_feature }
      else
        format.html { render :new }
        format.json { render json: @item_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_features/1
  # PATCH/PUT /item_features/1.json
  def update
    respond_to do |format|
      if @item_feature.update(item_feature_params)
        format.html { redirect_to @item_feature, notice: 'Item feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_feature }
      else
        format.html { render :edit }
        format.json { render json: @item_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_features/1
  # DELETE /item_features/1.json
  def destroy
    @item_feature.destroy
    respond_to do |format|
      format.html { redirect_to item_features_url, notice: 'Item feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_feature
      @item_feature = ItemFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_feature_params
      params.require(:item_feature).permit(:pulse, :tariff_on_net, :tariff_off_net, :tariff_on_net_on_atw, :tariff_off_net_on_atw, :applicable_time_window, :call_destination)
    end
end
