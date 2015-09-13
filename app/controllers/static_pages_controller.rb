class StaticPagesController < ApplicationController
  
  def about
  @partners = Partner.all
  
  end
  
  def support
 
  end
  
  def proxy_party
  
  end

  def home
  
  end
  
end
