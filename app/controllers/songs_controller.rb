class SongsController < ApplicationController

  before_action :set_event, only: [ :upvote ]
  
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
	@songs = Song.all.order(:cached_votes_up => :desc)
  end
  
  def upvote
	@song.upvote_from current_user
	respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end
  
  def set_event
	@song = Song.find(params[:id])
  end
  
   def song_params
      params.require(:song).permit(:name, :artist, :anime, :nbre_vote, :photo)
   end
end
