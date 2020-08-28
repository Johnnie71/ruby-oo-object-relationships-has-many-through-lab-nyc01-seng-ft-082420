class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name  = name
    end

    def new_appointment(doctor, date)
        
    end

    def self.all
        @@all
    end

    def appointments
        Patient.all.select { |appointment| appointment.patient == self }
    end

    def doctors
        Doctors.all { |doctor| doctor.patient == self }
    end



    
end