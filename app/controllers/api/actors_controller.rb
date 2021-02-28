class Api::ActorsController < ApplicationController
  def actors
    @actors = Actor.all
    # @actor = Actor.find_by(id: 2)
    render "actors.json.jb"
  end


end
