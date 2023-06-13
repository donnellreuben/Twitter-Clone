class SearchController < ApplicationController


  def index
  end

  def search
    @query = params[:query]
    @tweets = Tweet.where("content LIKE ?", "%#{@query}%")
  end


end
