class Liability

  attr_reader :first_name, :last_name, :amount_due
  
  def initialize(first_name, last_name, amount_due)
    @first_name = first_name
    @last_name = last_name
    @amount_due = amount_due
  end

end 