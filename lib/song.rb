class Song
  attr_accessor :name, :artist_name
  @@all = []

  def create
    song = Song.new
    song.save
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
