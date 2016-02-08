class StoreController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def search

  end

  def search_results
  end
  
end
