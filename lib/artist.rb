class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@songs = []
  end

  def songs
    @@songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name} == nil
      self.new(name)
    else
      @@all.detect {|artist| artist.name == name}
    end
  end

  def self.add_song(song)
    @@songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def print_songs
    @@songs.each do|song|
      puts song.name
    end
  end
end
