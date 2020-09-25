require 'pry'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
<<<<<<< HEAD
    @@all
=======
    Artist.all
>>>>>>> d9fa0dbf69440c766cdeb15003bac6abd4ffd70d
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
<<<<<<< HEAD
    self.artist.add_song(self)
=======
    artist.add_song(self)
>>>>>>> d9fa0dbf69440c766cdeb15003bac6abd4ffd70d
  end

end
