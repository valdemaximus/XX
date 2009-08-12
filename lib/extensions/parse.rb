require 'csv'

module XX
  class Parse
    def self.csv_to_array(file_location)
      csv = CSV::parse(File.open(file_location, 'r') {|f| f.read })
      fields = csv.shift
      csv.map do |record|
        Hash[*(0..(fields.length - 1)).map do |index|
          [fields[index],record[index].to_s]
        end.flatten ]
      end
    end
  end
end