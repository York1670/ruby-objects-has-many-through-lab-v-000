class Doctor
  attr_accessor :name, :patient, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
    self.appointment.last
  end

  def appointments
    Appointment.all.select do|appointment|
      appointment.doctor == self
    end
  end

  def patients
    Appointment.map do |appointment|
      appointment.patient
    end
  end

end
