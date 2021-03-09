class FilmsController < ApplicationController
  def index 
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/upcoming?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US&page=1"))
    render json: response
  end
  def show
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US"))
    render json: response
  end
end
