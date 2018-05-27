require 'test_helper'

class SongTest < ActiveSupport::TestCase

  def setup
    @song = Song.new(name: "Example song", artist:"Lia", anime:"Kono Suba", nbre_vote:0)
  end
  
  test "should be valid" do
    assert @song.valid?
  end
  
  test "name should be present" do
    @song.name = ""
    assert_not @song.valid?
  end

  test "artist should be present" do
    @song.artist = "     "
    assert_not @song.valid?
  end

  test "anime should be present" do
	@song.anime = "    "
	assert_not @song.valid?
  end
  
  test "nbre_vote should be equal to 0 or more" do
    @song.nbre_vote = "a"
	assert_not @song.valid?
  end
  
  test "song name should be unique" do
    duplicate_song = @song.dup
    duplicate_song.name = @song.name.upcase
    @song.save
    assert_not duplicate_song.valid?
  end
  
end