class Rooms

  attr_reader :name :capacity

  def initialize(name, capacity)
    @name = name
    @guests = []
    @songs = []
    @capacity = 50
  end

  def number_of_guests
    @guests.length()
  end

  def add_guest(guest_name)
    @guests << guest_name
  end

  def remove_guest(guest_name)
    index = @guests.index(guest_name)
    @guests.slice!(index,1)
  end

  def remove_everyone()
    @guests.clear()
  end

  def list_of_songs()
    @songs.length()
  end

  def add_song(song_title)
    @songs << song_title
  end

  def remove_song(song_title)
    index = @songs.index(song_title)
    @songs.slice!(index,1)
  end

end
