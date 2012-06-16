class ProductsController < ApplicationController
  respond_to :json

  def index
    @products = Product.all
    respond_with({:products => @products})
  end
end