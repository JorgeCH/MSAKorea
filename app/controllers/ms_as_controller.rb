class MsAsController < ApplicationController
  before_action :set_msa, only: [:show, :edit, :update, :destroy]

  # GET /msas
  # GET /msas.json
  def index
    @msas = Msa.all
  end

  # GET /msas/1
  # GET /msas/1.json
  def show
  end

  # GET /msas/new
  def new
    @msa = Msa.new
  end

  # GET /msas/1/edit
  def edit
  end

  # POST /msas
  # POST /msas.json
  def create
    @msa = Msa.new(msa_params)

    respond_to do |format|
      if @msa.save
        format.html { redirect_to @msa, notice: 'Msa was successfully created.' }
        format.json { render :show, status: :created, location: @msa }
      else
        format.html { render :new }
        format.json { render json: @msa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /msas/1
  # PATCH/PUT /msas/1.json
  def update
    respond_to do |format|
      if @msa.update(msa_params)
        format.html { redirect_to @msa, notice: 'Msa was successfully updated.' }
        format.json { render :show, status: :ok, location: @msa }
      else
        format.html { render :edit }
        format.json { render json: @msa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /msas/1
  # DELETE /msas/1.json
  def destroy
    @msa.destroy
    respond_to do |format|
      format.html { redirect_to msas_url, notice: 'Msa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_msa
      @msa = Msa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def msa_params
      params.require(:msa).permit(:name, :logo, :description)
    end
end
