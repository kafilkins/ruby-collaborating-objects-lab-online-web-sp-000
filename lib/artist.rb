class Artist

  attr_accessor :name, :songs
  @@all = [ ]

  def initialize(name)
    @name = name
<<<<<<< HEAD
    @songs = [ ]
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
=======
    @song = [ ]
    @@all << self
  end

  def add_song(song)
    song.artist = self
>>>>>>> 8d4fc6a831f08f051c69ca62465cf06c73b25cb7
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
<<<<<<< HEAD
=======
      new_artist.save
>>>>>>> 8d4fc6a831f08f051c69ca62465cf06c73b25cb7
      new_artist
    end
  end

  def print_songs
<<<<<<< HEAD
    @songs.each {|song| puts song.name}
    end
=======
    @songs.each do |song|
      puts song.name
    end
  end
>>>>>>> 8d4fc6a831f08f051c69ca62465cf06c73b25cb7
end
