class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    newInstance = self.new
    self.all << newInstance
    newInstance
  end

  def self.new_by_name(name)
    newInstance = self.class.create
    @name = name
  end

end
