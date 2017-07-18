class StorefrontController < ApplicationController

  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@products = Product.where(category_id: params[:category_id])
  	render 'all_items'
  end

  def items_by_brand
  	@products = Product.where(brand: params[:brand])
  	render 'all_items'
  end
end
