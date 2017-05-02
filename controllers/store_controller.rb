class StoreController < ApplicationController
  def index
	  @product1s = Product1.order(:title)
  end

end
