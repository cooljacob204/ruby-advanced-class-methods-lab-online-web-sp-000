require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name = "", artist_name = "")
    @name = name
    @artist_name = artist_name
    save
  end
  
  def self.create
    self.new
  end
  
  def self.new_by_name(name)
    self.new(name)
  end
  
  def self.create_by_name(name)
    self.new(name)
  end
  
  def self.find_by_name(name)
    self.all.find{|p| p.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end
  
  def self.alphabetical
    self.all.sort_by{|p| p.name}
  end
  
  def self.create_by_name_and_artist(name, artist)
    
  end
  
  def self.new_from_filename(name)
   self.create_by_name(name.split(".mp3")[0].split(" - ")[1])
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
