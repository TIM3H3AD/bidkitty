class BidsController < ApplicationController
  
  http_basic_authenticate_with name: "TDcrew", password: "12p313", only: :index
  
  http_basic_authenticate_with name: "TDcrew", password: "12p313", only: :edit
  
  http_basic_authenticate_with name: "TDcrew", password: "12p313", only: :destroy
  
def new
@bid = Bid.new
end
 
def create
  @bid = Bid.new(params[:bid].permit(:auction_end, :auction_id, :bid_threshold, :btc_address, :maker, :maker_email, :maker_phone, :available_funds, :street_name, :street_number, :total_funds, :plan, :unique_name))
 
  if @bid.save
    redirect_to @bid
  else
    render 'new'
  end
end
  
def show
  @bid = Bid.find(params[:id])
end

def edit
  @bid = Bid.find(params[:id])
end

def update
  @bid = Bid.find(params[:id])
 
  if @bid.update_attributes(params[:bid].permit(:auction_end, :auction_id, :bid_threshold, :btc_address, :maker, :maker_email, :maker_phone, :available_funds, :street_name, :street_number, :total_funds, :plan, :unique_name))
    redirect_to @bid
  else
    render 'edit'
  end
end

def show
    @bid = Bid.find(params[:id])
end

def index
  @bids = Bid.all.order(:maker)
end

def destroy
  @bid = Bid.find(params[:id])
  @bid.destroy 
  
  redirect_to bids_path
end

end
