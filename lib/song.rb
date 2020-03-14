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
    song = Song.new_by_name(name)
  end

  def self.new_from_filename(fn)
    song_and_artist = fn.split(" - ")
    song_name = song_and_artist[1].chomp(".mp3")
    artist = song_and_artist[0]
    song = Song.new_by_name(song_name)
    song.artist_name = artist
  end

  def self.find_by_name(name)
    self.all.find{|s| s.name == name}
  end

  def self.find_or_create_by_name(name)
    !!self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by{|name| name.name}
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
