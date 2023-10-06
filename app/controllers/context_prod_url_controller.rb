class ContextProdUrlController < ApplicationController
  before_action :find_prod_url, only: [:show, :edit, :update, :destroy]

  def index
    @prod_urls = ContextProdUrl.all
  end

  def new
    @prod_url = ContextProdUrl.new
  end

  def create
    @prod_url = ContextProdUrl.new(context_prod_url_params)
    if @prod_url.save
      redirect_to context_prod_url_index_path, notice: 'Prod URL created successfully.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @prod_url.update(context_prod_url_params)
      redirect_to context_prod_url_path(@prod_url), notice: 'Prod URL updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @prod_url.destroy
    redirect_to context_prod_url_index_path, notice: 'Prod URL deleted successfully.'
  end

  private

  def context_prod_url_params
    params.require(:context_prod_url).permit(:url)
  end

  def find_prod_url
    @prod_url = ContextProdUrl.find(params[:id])
  end
end
