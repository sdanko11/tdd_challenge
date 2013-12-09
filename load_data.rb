require 'csv'

class LoadData

  attr_reader :all_persons

  def initialize
    @all_persons = []
  end

  def load_employees
    persons_data = 'data.csv'
    CSV.foreach(persons_data, headers:true) do |row|
      data = row.to_hash
      person = Employee.new(data)
      @all_persons << person
    end
  end
end