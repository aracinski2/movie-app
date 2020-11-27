class Api::MoviesController < ApplicationController

  # require 'http'

  def index
    @movies = Movie.all
    render 'index.json.jb'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    # movie = Movie.find_by(id: params[:id])
    # @movie = HTTP.post("http://localhost:3000/api/movies/#{movie}")
    render 'show.json.jb'
  end

end
