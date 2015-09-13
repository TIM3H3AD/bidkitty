class PartnersController < ApplicationController

def new
@partner = Partner.new
end
 
def create
  @partner = Partner.new(params[:partner].permit(:name, :website, :phone, :email, :description))
 
  if @partner.save
    redirect_to @partner
  else
    render 'new'
  end
end

def show
  @partner = Partner.find(params[:id])
end

def edit
  @partner = Partner.find(params[:id])
end

def update
  @partner = Partner.find(params[:id])
 
  if @partner.update_attributes(params[:partner].permit(:name, :website, :phone, :email, :description))
    redirect_to @partner
  else
    render 'edit'
  end
end

def show
    @partner = Partner.find(params[:id])
end

def index
  @partners = Partner.all
end

def destroy
  @partner = Partner.find(params[:id])
  @partner.destroy 
  
  redirect_to partners_path
end

end
