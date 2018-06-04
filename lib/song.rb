require "pry"
class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.name= song_name
    song

  end
end
