class Api::ActorsController < ApplicationController
  def show
    render 'show.json.jb'
  end
end
