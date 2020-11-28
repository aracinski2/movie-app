class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render 'index.json.jb'
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @actor = Actor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],      known_for: params[:known_for],
    )
    render 'show.json.jb'
  end
end
