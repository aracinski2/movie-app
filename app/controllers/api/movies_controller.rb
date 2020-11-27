class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'index.json.jb'
  end

  def show
    @movie = Movie.find(:id)
    render 'show.json.jb'
  end

end
