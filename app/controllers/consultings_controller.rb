class ConsultingsController < ApplicationController
  before_action :set_consulting, only: [:show, :edit, :update, :destroy]
  before_action :autenticacao_tecnico
  # before_action :authenticate_user!

  # GET /consultings
  # GET /consultings.json

  def autenticacao_tecnico
    if current_user.user_type != "População"
      redirect_to home_index_path
    end
  end

  def index
    @consultings = Consulting.all
  end

  # GET /consultings/1
  # GET /consultings/1.json
  def show
  end

  # GET /consultings/new
  def new
    @consulting = Consulting.new
  end

  # GET /consultings/1/edit
  def edit
  end

  # POST /consultings
  # POST /consultings.json
  def create
    @consulting = Consulting.new(consulting_params)

    respond_to do |format|
      if @consulting.save
        format.html { redirect_to consultings_path }
        format.json { render :show, status: :created, location: @consulting }
      else
        format.html { render :new }
        format.json { render json: @consulting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultings/1
  # PATCH/PUT /consultings/1.json
  def update
    respond_to do |format|
      if @consulting.update(consulting_params)
        format.html { redirect_to consultings_path }
        format.json { render :show, status: :ok, location: @consulting }
      else
        format.html { render :edit }
        format.json { render json: @consulting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultings/1
  # DELETE /consultings/1.json
  def destroy
    @consulting.destroy
    respond_to do |format|
      format.html { redirect_to consultings_url, notice: 'Consulting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulting
      @consulting = Consulting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulting_params
      params.require(:consulting).permit(:name, :description, :user_id, :location)
    end
end
