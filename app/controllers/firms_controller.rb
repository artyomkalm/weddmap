class FirmsController < ApplicationController
  before_action :set_firm, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @firms = Firm.all    
    @hash = Gmaps4rails.build_markers(@firms) do |firm, marker|
      marker.lat firm.lat
      marker.lng firm.lng      
    end    
  end

  def show
    respond_with(@firm)
  end

  def new
    @firm = Firm.new
    respond_with(@firm)
  end

  def edit
  end

  def create
    @firm = Firm.new(firm_params)
    @firm.save
    respond_with(@firm)
  end

  def update
    @firm.update(firm_params)
    respond_with(@firm)
  end

  def destroy
    @firm.destroy
    respond_with(@firm)
  end

  private
    def set_firm
      @firm = Firm.find(params[:id])
    end

    def firm_params
      params.require(:firm).permit(:name, :category, :description, :address, :user_id)
    end
end
