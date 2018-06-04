require "pry"
class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    artist= Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[0]
    song = Song.new(song_name)


  end
end
