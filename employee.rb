class Employee

  attr_reader :last_name, :first_name, :annual_income, :tax_paid, :tax_rate
  
  def initialize(employee_data)
    @first_name = employee_data['first_name'] || "[first name]"
    @last_name = employee_data['last_name'] || "[last name]"
    @annual_income = employee_data['annual_income'].to_f || 0
    @tax_paid = employee_data['tax_paid'].to_f || 0
    @tax_rate = employee_data['tax_rate'].to_f || 0
  end
  
end