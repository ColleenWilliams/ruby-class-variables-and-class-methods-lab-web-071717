class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    uniq_genres = {}
    @@genres.each do |genre|
      if uniq_genres[genre]
        uniq_genres[genre] +=1
      else
         uniq_genres[genre] = 1
       end
     end
     uniq_genres
   end

   def self.artist_count
     uniq_artist = {}
     @@artists.each do |artist|
       if uniq_artist[artist]
         uniq_artist[artist] +=1
       else
          uniq_artist[artist] = 1
        end
      end
      uniq_artist
    end
end
