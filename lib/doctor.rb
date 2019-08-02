class Doctor
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @patients = []
  @@all << self

end


def self.all
  @@all

end

def appointments
  Appointment.all.select { |appointment| appointment.doctor == self }
end

end
