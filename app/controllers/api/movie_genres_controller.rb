class Api::MovieGenresController < ApplicationController
  def create
    @mg = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    @mg.save
    render "show.json.jb"
  end
  
end
