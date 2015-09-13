class StaticPagesController < ApplicationController
  
  def about
  @partners = Partner.all.order(:name)
  
  end
  
  def support
 
  end
  
  def proxy_party
  
  end

  def home
  
  end
  
end
