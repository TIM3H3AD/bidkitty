class CoinsController < ApplicationController

 http_basic_authenticate_with name: "okm", password: "okmijn", only: :destroy 
 
 http_basic_authenticate_with name: "okm", password: "okmijn", only: :edit
  
 http_basic_authenticate_with name: "okm", password: "okmijn", only: :create
   
 http_basic_authenticate_with name: "okm", password: "okmijn", only: :update
 
 http_basic_authenticate_with name: "okm", password: "okmijn", only: :new

def new
@coin = Coin.new
end
 
def create
  @coin = Coin.new(params[:coin].permit(:xdp_name, :xdp_address, :btc_address, :proof_of_reserve, :title, :info, :webpage, :dev_name, :dev_contact, :image_1, :image_2, :image_3, :wbi_verified, :capital_assets_value, :capital_assets_info))
 
  if @coin.save
    redirect_to @coin
  else
    render 'new'
  end
end
  
def show
  @coin = Coin.find(params[:id])
  end

def edit
  @coin = Coin.find(params[:id])
end

def update
  @coin = Coin.find(params[:id])
 
  if @coin.update_attributes(params[:coin].permit(:xdp_name, :xdp_address, :btc_address, :proof_of_reserve, :title, :info, :webpage, :dev_name, :dev_contact, :image_1, :image_2, :image_3, :wbi_verified, :capital_assets_value, :capital_assets_info))
    redirect_to @coin
  else
    render 'edit'
  end
end

def show
    @coin = Coin.find(params[:id])
end

def index
  @coins = Coin.all
end

def destroy
  @coin = Coin.find(params[:id])
  @coin.destroy
 
  redirect_to :com
end
end
