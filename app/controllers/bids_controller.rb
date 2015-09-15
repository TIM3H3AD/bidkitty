class BidsController < ApplicationController
  
  http_basic_authenticate_with name: "hans", password: "barbe", only: :index
  
  http_basic_authenticate_with name: "whalebone", password: "theonlyescape", only: :edit
  
  http_basic_authenticate_with name: "whalebone", password: "theonlyescape", only: :destroy
  
def new
@bid = Bid.new
end
 
def create
  @bid = Bid.new(params[:bid].permit(:maker, :maker_phone, :maker_email, :auction_id, :street_number, :street_name, :total_funds_borrowed, :bid_threshold, :auction_end, :btc_address, :plan, :unique_name, :available_funds, :auction_starting_bid, :estimated_funds_needed, :total_payments_made))
 
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
 
  if @bid.update_attributes(params[:bid].permit(:maker, :maker_phone, :maker_email, :auction_id, :street_number, :street_name, :total_funds_borrowed, :bid_threshold, :auction_end, :btc_address, :plan, :unique_name, :available_funds, :auction_starting_bid, :estimated_funds_needed, :total_payments_made))
    redirect_to @bid
  else
    render 'edit'
  end
end

def show
    @bid = Bid.find(params[:id])
end

def index
  @bids = Bid.all.order(:auction_end)
end

def destroy
  @bid = Bid.find(params[:id])
  @bid.destroy 
  
  redirect_to bids_path
end

def bid_params
      params.require(:bid).permit(:estimated_funds_needed, :available_funds, :auction_starting_bid)
end

end
