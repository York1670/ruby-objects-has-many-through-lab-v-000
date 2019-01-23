class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize
    @date = date
    @patient = patient
    @doctor = doctor
    @all << self
  end

  def self.all
    @@all
  end

  def patients
    appointment.patient = self
  end

  def doctors
    appointment.doctor
  end

end
