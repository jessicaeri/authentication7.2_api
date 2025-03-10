class ProductsController < ApplicationController
  def index
    products = policy_scope(Product) # product_policy.rb - scope#resolve
    render json: products
  end   
end
