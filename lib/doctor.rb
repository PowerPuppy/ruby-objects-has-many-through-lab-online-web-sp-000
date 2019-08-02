class Doctor
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @patients = []
  @@all << self

end

end
