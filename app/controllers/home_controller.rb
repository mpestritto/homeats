class HomeController < ApplicationController
  
  def index
    @locations=[['Manhattan', 'man'], ['Brooklyn', 'brk'], ['Queens', 'que']]
  end
  
end
