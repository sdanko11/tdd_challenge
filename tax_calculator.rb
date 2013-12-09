class TaxCalculator

  attr_reader :refund_amount, :first_name, :last_name

  def initialize(employee)
    @employee = employee
    @taxes_owed = 0
    @amount_due = 0
    @refund_amount = 0
    @tax_paid = @employee.tax_paid
    @first_name = @employee.first_name
    @last_name = @employee.last_name
  end

  def do_they_owe_money
    @taxes_owed - @tax_paid
  end

  def calculate_tax
   @taxes_owed += (@employee.annual_income * (@employee.tax_rate / 100))
  end

  def money_owed
    @amount_due += (@taxes_owed - @tax_paid).round(2)
    liability
  end

  def refund_amount
    (@tax_paid - @taxes_owed).round(2)
  end

  def liability
    Liability.new(@first_name, @last_name, @amount_due)
  end

end