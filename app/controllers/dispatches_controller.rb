class DispatchesController < ApplicationController
  before_action :set_dispatch, only: [:show, :edit, :update, :destroy]

  # GET /dispatches
  # GET /dispatches.json
  def index
    @dispatches = Dispatch.all
  end

  # GET /dispatches/1
  # GET /dispatches/1.json
  def show
  end

  # GET /dispatches/new
  def new
    @dispatch = Dispatch.new
  end

  # GET /dispatches/1/edit
  def edit
  end

  # POST /dispatches
  # POST /dispatches.json
  def create
    @dispatch = Dispatch.new(dispatch_params)

    if @dispatch.save
      flash[:success] = 'Dispatch was successfully created.'
      redirect_to dispatches_url
    else
      render :new
    end
  end

  # PATCH/PUT /dispatches/1
  # PATCH/PUT /dispatches/1.json
  def update
    if @dispatch.update(dispatch_params)
      flash[:success] = "Dispatch was successfully updated."
      redirect_to dispatches_url
    else
      render :edit
    end
  end

  # DELETE /dispatches/1
  # DELETE /dispatches/1.json
  def destroy
    @dispatch.destroy
    flash[:success] = "Dispatch was successfully deleted."
    redirect_to dispatches_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispatch
      @dispatch = Dispatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispatch_params
      params.require(:dispatch).permit(:vehicle_id, :driver_id, :dispatch_date, :amount, :description, :status)
    end
end
