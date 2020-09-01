class Patient

    attr_accessor :name, :appointment

    @@all = []
 
    def initialize(name)
        @name  = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end

    def doctors
        # Doctors.all { |doctor| doctor.patient == self }
        appointments.map { |doc| doc.doctor }
    end



    
end