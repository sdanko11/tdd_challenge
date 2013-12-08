require 'rspec'
require_relative 'employee'

describe Employee do

  let(:employee) { Employee.new({}) }

  it 'employee should have a first name' do
    person = Employee.new({"first_name" => "Steve"})
    expect(person.first_name).to eql("Steve")
  end

  it 'should default to "[first name]" if first name not provided' do
    expect(employee.first_name).to eql("[first name]")
  end

  it 'should default to 0 if tax paid is not provided' do
    expect(employee.tax_paid).to eql(0.0)
  end

   it 'should default to "[last name]" if last name is not provided' do
    expect(employee.last_name).to eql("[last name]")
  end

  it 'should default to 0 if annual income is not provided' do
    expect(employee.annual_income).to eql(0.0)
  end

end