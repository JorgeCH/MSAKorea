class FormalitiesController < ApplicationController
  before_action :require_login!, except: [:index, :show]
  before_action :set_formality, only: [:show, :edit, :update, :destroy]

  # GET /formalities
  # GET /formalities.json
  def index
    @formalities = Formality.all
  end

  # GET /formalities/1
  # GET /formalities/1.json
  def show
  end

  # GET /formalities/new
  def new
    @formality = Formality.new
  end

  # GET /formalities/1/edit
  def edit
  end

  # POST /formalities
  # POST /formalities.json
  def create
    @formality = Formality.new(formality_params)

    respond_to do |format|
      if @formality.save
        format.html { redirect_to @formality, notice: 'Formality was successfully created.' }
        format.json { render :show, status: :created, location: @formality }
      else
        format.html { render :new }
        format.json { render json: @formality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formalities/1
  # PATCH/PUT /formalities/1.json
  def update
    respond_to do |format|
      if @formality.update(formality_params)
        format.html { redirect_to @formality, notice: 'Formality was successfully updated.' }
        format.json { render :show, status: :ok, location: @formality }
      else
        format.html { render :edit }
        format.json { render json: @formality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formalities/1
  # DELETE /formalities/1.json
  def destroy
    @formality.destroy
    respond_to do |format|
      format.html { redirect_to formalities_url, notice: 'Formality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formality
      @formality = Formality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formality_params
      params.require(:formality).permit(:name, :description, :image)
    end
end
