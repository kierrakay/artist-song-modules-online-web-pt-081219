module Memorable
  module ClassInstances
  
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
  
  # self is "extend"i n module ClassMethods
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end
 end 
 
   module InstanceMethods
    def initialize
       self.class.all << self
    end
  end
end