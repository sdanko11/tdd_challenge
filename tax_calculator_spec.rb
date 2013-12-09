require 'rspec'
require 'pry'
require_relative 'load_data'
require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability_class'

describe TaxCalculator do

  let(:employee1) { Employee.new({"annual_income" => "1000", "tax_rate" => "5", "tax_paid" => "0"}) }
  let(:employee2) { Employee.new({"annual_income" => "1000", "tax_rate" => "10", "tax_paid" => "500"}) }
  let(:employee3) { Employee.new({"annual_income" => "10", "tax_rate" => "10", "tax_paid" => "3"}) }

    it 'calculate the amount of taxes that an employee owes' do
      steve = TaxCalculator.new(employee1)
      expect(steve.calculate_tax).to eql(50.0)
    end
    
    it 'calculate the amount of taxes an employee owes' do
      steve = TaxCalculator.new(employee2)
      expect(steve.calculate_tax).to eql(100.0)
    end

    it "should calculate the amount of money a employee gets a refund" do
      person = TaxCalculator.new(employee2)
      person.calculate_tax
      binding.pry
      expect(person.refund_amount).to eql(400.0)
    end

    it "should calculate the amount of money a employee gets in a refund" do
      person = TaxCalculator.new(employee3)
      person.calculate_tax
      expect(person.refund_amount).to eql(2.0)
    end

end