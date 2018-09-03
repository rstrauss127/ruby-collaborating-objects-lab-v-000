class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist
  end

  def self.new_by_filename(filename)

    song = self.new(filename)

  end

  def artist_name
    self.artist.name
  end


end
