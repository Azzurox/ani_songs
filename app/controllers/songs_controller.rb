class SongsController < ApplicationController
  def new
	@song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
	@song = Song.find(params[:id])
  end
  
  def index
	@songs = Song.all
  end
  
   def song_params
      params.require(:song).permit(:name, :artist, :anime, :nbre_vote, :photo)
   end
end
