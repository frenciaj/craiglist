class LandingController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

  def search

  end

  def search_results
    @found_products = Product.keyword_search(params[:search_keywords])
  end
end
