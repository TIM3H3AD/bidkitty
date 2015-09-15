class StaticPagesController < ApplicationController
  
  def about
   @partners = Partner.all.order(:name)
  end
  
  def support
   @partners = Partner.all.order(:name)
  end
  
end
