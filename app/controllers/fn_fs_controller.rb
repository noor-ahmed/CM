class FnFsController < ApplicationController
  before_action :set_fnf, only: [:show, :edit, :update, :destroy]

  # GET /fnfs
  # GET /fnfs.json
  def index
    @fnfs = Fnf.all
  end

  # GET /fnfs/1
  # GET /fnfs/1.json
  def show
  end

  # GET /fnfs/new
  def new
    @fnf = Fnf.new
  end

  # GET /fnfs/1/edit
  def edit
  end

  # POST /fnfs
  # POST /fnfs.json
  def create
    @fnf = Fnf.new(fnf_params)

    respond_to do |format|
      if @fnf.save
        format.html { redirect_to @fnf, notice: 'Fnf was successfully created.' }
        format.json { render :show, status: :created, location: @fnf }
      else
        format.html { render :new }
        format.json { render json: @fnf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fnfs/1
  # PATCH/PUT /fnfs/1.json
  def update
    respond_to do |format|
      if @fnf.update(fnf_params)
        format.html { redirect_to @fnf, notice: 'Fnf was successfully updated.' }
        format.json { render :show, status: :ok, location: @fnf }
      else
        format.html { render :edit }
        format.json { render json: @fnf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnfs/1
  # DELETE /fnfs/1.json
  def destroy
    @fnf.destroy
    respond_to do |format|
      format.html { redirect_to fnfs_url, notice: 'Fnf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fnf
      @fnf = Fnf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fnf_params
      params.require(:fnf).permit(:no_of_fnf)
    end
end
