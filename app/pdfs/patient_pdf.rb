class PatientPdf < Prawn::Document
    def initialize(patients)
        super()
        @patient = Patient.order("id DESC").all
        user_id
    end
    
    def user_id
        table user_id_all
    end
    
    def user_id_all
        [["name","age","date_of_birth","address","phone_no","condition"]]+
        @patient.map do |patient|
            [patient.name,patient.age,patient.date_of_birth,patient.address,patient.phone_no,patient.condition]
        end
    end
end