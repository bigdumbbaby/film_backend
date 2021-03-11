class FilmsController < ApplicationController
  def index 
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{params[:filter]}?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US&page=#{params[:page_num]}"))
    render json: response
  end

  def show
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US"))
    render json: response
  end

  def getColorPalette
    Miro.options[:color_count] = params[:palette_num]
    response = Miro::DominantColors.new(params[:poster])
    render json: response.to_rgb
  end

  def search
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US&query=#{params[:search_name]}&page=#{params[:page_num]}&include_adult=false"))
    render json: response
  end
end
