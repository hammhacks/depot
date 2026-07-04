class StoreController < ApplicationController
  
  def index
    @products = Product.order(:title)

    session[:silly_test]=24
    @silly_test = session[:silly_test]

    if session[:counter].nil?
      session[:counter] = 1
      @counter = session[:counter]
    else
      session[:counter] = session[:counter] + 1
      @counter = session[:counter]
    end
    

  end
end
