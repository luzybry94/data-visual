class Record < ApplicationRecord
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            record = Record.new
            record.first_name = row[0]
            record.middle_initial = row[1]
            record.last_name = row[2]
            record.prefix = row[3]
            record.address_1 = row[4]
            record.address_2 = row[5]
            record.city = row[6]
            record.state = row[7]
            record.zipcode = row[8]
            record.education = row[9]
            record.estimated_income = row[10]
            record.save
        end
    end  
end
