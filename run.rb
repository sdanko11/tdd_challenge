require 'pry'
require_relative 'load_data'
require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability_class'

@all_persons = []
employees = LoadData.new
employees.load_employees

employees.all_persons.each do |person|
 employee = TaxCalculator.new(person)
 employee.calculate_tax
  if employee.do_they_owe_money > 0
    person_info = employee.money_owed
      puts "#{person_info.first_name} #{person_info.last_name} has a tax liability of #{person_info.amount_due}"
  else
    employee.refund_amount
    puts "#{employee.first_name} #{employee.last_name} will receive a refund of #{employee.refund_amount}"
  end
end