class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist= Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file)
    file.each do |entry|
      song_name= entry.split(" - ")[1]
      artist_name= entry.split(" - ")[0]

      new_instance = Song.new(song_name)
      new_instance.artist= artist_name
    end
  end
end
