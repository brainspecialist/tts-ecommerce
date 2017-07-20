class StorefrontController < ApplicationController
	protect_from_forgery with: :exception

	before_action :categories

  def categories
  	@categories = Category.order(:name)
  end

  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@products = Product.where(category_id: params[:category_id])
  	@category = Category.find(params[:category_id])
  end

  def items_by_brand
  	@products = Product.where(brand: params[:brand])
  	@brand = params[:brand]
  end
end
