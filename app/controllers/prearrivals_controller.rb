class PrearrivalsController < ApplicationController
  before_action :require_login!, except: [:index, :show]
  before_action :set_prearrival, only: [:show, :edit, :update, :destroy]

  # GET /prearrivals
  # GET /prearrivals.json
  def index
    @prearrivals = Prearrival.all
  end

  # GET /prearrivals/1
  # GET /prearrivals/1.json
  def show
  end

  # GET /prearrivals/new
  def new
    @prearrival = Prearrival.new
  end

  # GET /prearrivals/1/edit
  def edit
  end

  # POST /prearrivals
  # POST /prearrivals.json
  def create
    @prearrival = Prearrival.new(prearrival_params)

    respond_to do |format|
      if @prearrival.save
        format.html { redirect_to @prearrival, notice: 'Prearrival was successfully created.' }
        format.json { render :show, status: :created, location: @prearrival }
      else
        format.html { render :new }
        format.json { render json: @prearrival.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prearrivals/1
  # PATCH/PUT /prearrivals/1.json
  def update
    respond_to do |format|
      if @prearrival.update(prearrival_params)
        format.html { redirect_to @prearrival, notice: 'Prearrival was successfully updated.' }
        format.json { render :show, status: :ok, location: @prearrival }
      else
        format.html { render :edit }
        format.json { render json: @prearrival.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prearrivals/1
  # DELETE /prearrivals/1.json
  def destroy
    @prearrival.destroy
    respond_to do |format|
      format.html { redirect_to prearrivals_url, notice: 'Prearrival was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prearrival
      @prearrival = Prearrival.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prearrival_params
      params.require(:prearrival).permit(:title, :description, :image)
    end
end
