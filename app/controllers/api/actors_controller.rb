class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for],
    gender: params[:gender],
    age: params[:age],
    movie_id: params[:movie_id]
  )
    if @actor.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}
    end
    
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name]
    @actor.last_name = params[:last_name]
    @actor.known_for = params[:known_for]
    @actor.gender = params[:gender]
    @actor.age = params[:age]
    @actor.age = params[:movie_id]
    @actor.save
    render "show.json.jb"
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "song removed"}
  end
  
end
