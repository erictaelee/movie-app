class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "movies.json.jb"
  end
end
