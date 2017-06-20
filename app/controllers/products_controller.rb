class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    if params[:category]
      @products = Product.select {|product| product.category == params[:category]}
    else
      @products = Product.all
    end
  end
  def show
    # @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end
  def edit
    # @product = Product.find(params[:id])
  end
  def update
    # @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end
  def destroy
    # @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :tagline, :url, :category)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
