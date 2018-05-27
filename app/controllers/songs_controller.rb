class SongsController < ApplicationController
  def new
  end

  def show
	@song = Song.find(params[:id])
  end
  
  def index
	@songs = Song.all
  end
  
end
