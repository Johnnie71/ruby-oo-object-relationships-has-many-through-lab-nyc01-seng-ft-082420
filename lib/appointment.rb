


class Appointment

    attr_accessor :patient, :doctor

    @@all = []


    def initialize(date, patient, doctor)
        @date = date
        @patient = date
        @doctore = doctor
        @@all << self
    end

    def self.all
        @@all
    end






end