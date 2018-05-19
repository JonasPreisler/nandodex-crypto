class CoinsController < ApplicationController


  def list
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @market_cap_usd = [:market_cap_usd]
    end


end

