class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.create
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
