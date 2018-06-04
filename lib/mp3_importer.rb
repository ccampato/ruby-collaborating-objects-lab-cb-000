class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select { |f| !File.directory? f }
  end

  def import
    file =  self.files
    Song.new_by_filename(file)
  end
end
