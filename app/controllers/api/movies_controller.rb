class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.where(english: true)
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
      director: params[:director],
      english: params[:english],
    )
    if @movie.save
      render 'show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.plot = params[:plot]
    @movie.director = params[:director]
    @movie.english = params[:english]
    @movie.save
    if @movie.save
      render 'show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: :bad_request
    end
  end

  def delete
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Movie has been deleted"}
  end

end
