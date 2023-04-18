module Paramable
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
  
  class Artist
    include Paramable
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @songs = []
    end
  end
  
  class Song
    include Paramable
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  end
  