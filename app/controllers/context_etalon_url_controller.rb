class ContextEtalonUrlController < ApplicationController
  before_action :find_etalon_url, only: [:show, :edit, :update, :destroy]

  def index
    @etalon_urls = ContextEtalonUrl.all
  end

  def new
    @etalon_url = ContextEtalonUrl.new
  end

  def create
    @etalon_url = ContextEtalonUrl.new(context_etalon_url_params)
    if @etalon_url.save
      redirect_to context_etalon_url_index_path, notice: 'Etalon URL created successfully.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @etalon_url.update(context_etalon_url_params)
      redirect_to context_etalon_url_path(@etalon_url), notice: 'Etalon URL updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @etalon_url.destroy
    redirect_to context_etalon_url_index_path, notice: 'Etalon URL deleted successfully.'
  end

  private

  def context_etalon_url_params
    params.require(:context_etalon_url).permit(:url)
  end

  def find_etalon_url
    @etalon_url = ContextEtalonUrl.find(params[:id])
  end
end
