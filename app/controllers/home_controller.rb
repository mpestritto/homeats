class HomeController < ApplicationController
  
  def index
    @locations=[['New York City', 'nyc'], ['San Francisco', 'sfo'], ['Boston', 'bos']]
  end
  
end
