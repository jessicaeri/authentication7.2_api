class NewsController < ApplicationController
  def fetch_news
    require 'net/http'
    require 'json'

    url = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=#{ENV["apiKey"]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    render json: data
  end
  
end
