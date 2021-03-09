class FilmsController < ApplicationController
  def index 
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/upcoming?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US&page=1"))
    render json: response
  end

  def show
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US"))
    render json: response
  end

  def getColorPalette
    Miro.options[:color_count] = params[:palette_num]
    response = Miro::DominantColors.new("https://image.tmdb.org/t/p/w300#{params[:poster_path]}")
    render json: response.to_hex
  end

end
