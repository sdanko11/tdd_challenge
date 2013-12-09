require 'rspec'
require_relative 'load_data'
require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability_class'

describe Liability do

  let(:employee1) { Employee.new({"annual_income" => "100", "tax_rate" => "5", "tax_paid" => "0"}) }
  let(:employee2) { Employee.new({"annual_income" => "1000", "tax_rate" => "10", "tax_paid" => "50"}) }
  let(:employee3) { Employee.new({"annual_income" => "10000", "tax_rate" => "10", "tax_paid" => "900"}) }
  let(:employee4) { Employee.new({"annual_income" => "10000", "tax_rate" => "10", "tax_paid" => "900.75"}) }

    it 'should calculate the amount of tax they owe' do
      steve = TaxCalculator.new(employee1)
      steve.calculate_tax
      ben = steve.money_owed
      expect(ben.amount_due).to eql(5.0)
    end
    
    it 'should calculate the amount of tax they owe' do
      steve = TaxCalculator.new(employee2)
      steve.calculate_tax
      ben = steve.money_owed
      expect(ben.amount_due).to eql(50.0)
    end

    it 'should calculate the amount of tax they owe' do
      steve = TaxCalculator.new(employee3)
      steve.calculate_tax
      ben = steve.money_owed
      expect(ben.amount_due).to eql(100.0)
    end

    it 'should calculate the amount of tax they owe' do
      steve = TaxCalculator.new(employee4)
      steve.calculate_tax
      ben = steve.money_owed
      expect(ben.amount_due).to eql(99.25)
    end

end