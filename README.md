# Movie Poster Color Scheme Backend
> Get the color palette of your favorite Movie posters
> Deployed at https://film-backend.herokuapp.com/



## General info
This is the backend of my React Native phone app that allows the users to take any poster image and find out the color palette of said image. This works by using the image palette render gem miro and image processor gem MiniMagick. I used [The Movie DB's](https://www.themoviedb.org/) api to gather all the film data.

## Intro Video
[Movie Poster Color Palette on YouTube](https://www.youtube.com/watch?v=vNw2kApGYRk)

## Technologies
* Ruby - version 2.6.6
* Rails - version 6.1.3
* Rake - version 13.0.3
* Postgresql
* miro - version 0.23.0
* Heroku Deployment


## Setup
To run this project you can access the backend through [Heroku](https://film-backend.herokuapp.com/). You can access the frontend at [frontend](https://github.com/bigdumbbaby/film-frontend)


## Code Examples
```
def getColorPalette
    Miro.options[:color_count] = params[:palette_num]
    response = Miro::DominantColors.new(params[:poster])
    render json: response.to_rgb
  end
```
```
def search
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=56f6662bff7c2a1c935c2575984e9f97&language=en-US&query=#{params[:search_name]}&page=#{params[:page_num]}&include_adult=false"))
    render json: response
  end
```



## Features
* Dynamically Search for Films
* Filter by Upcoming, Now Playing, and Top Rated
* Produce color palette of a poster
* Access information about a film; including title, overview, rating, and release date 
* Upload your own photos and get their color palette


To-do list:
* Refactor code
* Allow the user to upload/take photos straight from their phone
* Cloud host all photos uploaded by the user 
* Implement Auth so a user can sign in and access their own photos


## Status
Project functions as intended, more room for improvement 


## Inspiration
The vibrant color schemes film makers implement to garner feelings from the viewer


## Contact
Created by [Colton O'Connor](https://www.linkedin.com/in/colton-o-connor/)

