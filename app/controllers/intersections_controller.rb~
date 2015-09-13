class IntersectionsController < ApplicationController
   
def new
@intersection = Intersection.new
end
 
def create
  @intersection = Intersection.new(params[:intersection].permit(:street_one, :street_two, :messenger, :contact, :payout))
 
  if @intersection.save
    redirect_to @intersection
  else
    render 'new'
  end
end
  
def show
  @intersection = Intersection.find(params[:id])
end

def edit
  @intersection = Intersection.find(params[:id])
end

def update
  @intersection = Intersection.find(params[:id])
 
  if @intersection.update_attributes(params[:intersection].permit(:street_one, :street_two, :messenger, :contact, :payout))
    redirect_to @intersection
  else
    render 'edit'
  end
end

def show
    @intersection = Intersection.find(params[:id])
end

def index
  @intersections = Intersection.all.order(:street_one)
end

def destroy
  @intersection = Intersection.find(params[:id])
  @intersection.destroy 
  
  redirect_to intersections_path
end	
end
