class ContextRegionController < ApplicationController
  before_action :find_region, only: [:show, :edit, :update, :destroy]

  def index
    @regions = ContextRegion.all
  end

  def new
    @region = ContextRegion.new
  end

  def create
    @region = ContextRegion.new(context_region_params)
    if @region.save
      redirect_to context_region_index_path, notice: 'Region created successfully.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @region.update(context_region_params)
      redirect_to context_region_path(@region), notice: 'Region updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @region.destroy
    redirect_to context_region_index_path, notice: 'Region deleted successfully.'
  end

  private

  def context_region_params
    params.require(:context_region).permit(:name)
  end

  def find_region
    @region = ContextRegion.find(params[:id])
  end
end
