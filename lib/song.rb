
require "pry"
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
    song = self.new
    
    @@all << song
    return song
  end
  
  def self.new_by_name(name)
    song=self.new
    song.name = name
    song
    
  end
  
  def self.create_by_name(name)
    song=self.new
    song.name = name
    @@all << song
    song
    
  end
  
  def self.find_by_name(name)
    @@all.find {|element|element.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name)
     @@all.find {|element|element.name == name}
    else
        create_by_name(name)
        
    end
  end
  
  def self.alphabetical 
    @@all.sort_by { |word| word.name }
  end
  
  def self.new_from_filename(file)
   song=self.new
   song.name = file.split(".")[0].split(" - ")[1]
<<<<<<< HEAD
  
   song.artist_name = file.split(".")[0].split(" - ")[0]
   song
   
  end
  
  def self.create_from_filename(file)
     song=self.new
    song.name = file.split(".")[0].split(" - ")[1]
  
   song.artist_name = file.split(".")[0].split(" - ")[0]
  
   @@all << song
    
  end
  
  def self.destroy_all
    @@all.clear
  end
    
=======
   
   
  end
>>>>>>> b103fd692edeff6de6224f0efdd8ab533a4f00bd
end
