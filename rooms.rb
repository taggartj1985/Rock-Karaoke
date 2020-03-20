class Room

attr_reader :name, :max_capacity, :capacity, :guest, :songs

  def initialize (name, max_capacity)
      @name = name
      @max_capacity = max_capacity
      @capacity = 0
      @guest = []
      @songs = []
  end


  def adding_songs(song)
    @songs.push(song)
  end

  def remove_songs(song)
    @songs.delete(song)
  end

  def guest_enter(guest)
    @guest.push(guest)
  end

  def guest_leaves(guest)
    @guest.delete(guest)
  end

  def full_room()
   @guest.length >= @max_capacity
  end





end
