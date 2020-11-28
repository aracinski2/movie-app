class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'index.json.jb'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    render 'show.json.jb'
  end

end
