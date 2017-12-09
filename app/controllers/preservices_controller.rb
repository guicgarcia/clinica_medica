class PreservicesController < ApplicationController
  before_action :set_preservice, only: [:show, :edit, :update, :destroy]

  # GET /preservices
  # GET /preservices.json
  def index
    @preservices = Preservice.all.includes(:patient)
  end

  # GET /preservices/1
  # GET /preservices/1.json
  def show
  end

  # GET /preservices/new
  def new
    @preservice = current_user.preservices.new
  end

  # GET /preservices/1/edit
  def edit
  end

  # POST /preservices
  # POST /preservices.json
  def create
    @preservice = current_user.preservices.new(preservice_params)

    respond_to do |format|
      if @preservice.save
        format.html { redirect_to @preservice, notice: 'Preservice was successfully created.' }
        format.json { render :show, status: :created, location: @preservice }
      else
        format.html { render :new }
        format.json { render json: @preservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preservices/1
  # PATCH/PUT /preservices/1.json
  def update
    respond_to do |format|
      if @preservice.update(preservice_params)
        format.html { redirect_to @preservice, notice: 'Preservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @preservice }
      else
        format.html { render :edit }
        format.json { render json: @preservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preservices/1
  # DELETE /preservices/1.json
  def destroy
    @preservice.destroy
    respond_to do |format|
      format.html { redirect_to preservices_url, notice: 'Preservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preservice
      @preservice = current_user.preservices.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preservice_params
      params.require(:preservice).permit(:type_service, :note, :reasons, :situation, :user_id, :patient_id)
    end
end
