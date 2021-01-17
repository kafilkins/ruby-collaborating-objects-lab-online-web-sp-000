<<<<<<< HEAD
require 'pry'
=======
>>>>>>> 8d4fc6a831f08f051c69ca62465cf06c73b25cb7
class Song
  attr_accessor :name, :artist

  @@all= [ ]

  def initialize(name)
    @name = name
<<<<<<< HEAD
    @artist = artist
=======
>>>>>>> 8d4fc6a831f08f051c69ca62465cf06c73b25cb7
    @@all << self
  end

  def self.all
    @@all
  end

<<<<<<< HEAD
  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
=======
  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
>>>>>>> 8d4fc6a831f08f051c69ca62465cf06c73b25cb7
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
