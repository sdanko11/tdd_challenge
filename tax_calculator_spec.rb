require 'rspec'
require 'pry'
require_relative 'load_data'
require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability_class'

describe TaxCalculator do

  let(:employee1) { Employee.new({"annual_income" => "1000", "tax_rate" => "5", "tax_paid" => "0"}) }
  let(:employee2) { Employee.new({"annual_income" => "1000", "tax_rate" => "10", "tax_paid" => "500"}) }

    it 'calculate the amount of taxes that an employee still owes' do
      steve = TaxCalculator.new(employee1)
      expect(steve.calculate_tax).to eql(50.0)
      binding.pry
    end
    
    it 'calculate the amount of taxes that an employee should get in return' do
      steve = TaxCalculator.new(employee2)
      expect(steve.calculate_tax).to eql(400.0)
    end
end