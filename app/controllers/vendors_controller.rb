class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  # GET /vendors
  # GET /vendors.json
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      flash[:success] = "Vendor was successfully created."
      redirect_to vendors_url
    else
      render :new
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    if @vendor.update(vendor_params)
      flash[:success] = "Vendor was successfully updated."
      redirect_to vendors_url
    else
      render :edit
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy
    flash[:success] = "Vendor was successfully deleted."
    redirect_to vendors_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:name, :email_address, :phone_number, :address, :city, :country, :notes, :status)
    end
end
