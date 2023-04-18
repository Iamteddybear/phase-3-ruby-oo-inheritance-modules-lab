module Findable
    def find_by_name(name)
      ObjectSpace.each_object(self).detect {|obj| obj.name == name}
    end
  end
  