# Description: Create a payroll system for employees that uses validation and initialization methods.

class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    # Two week pay period
    pay_for_period = (@salary / 365.0) * 14

    # Format sequence types are: %s string, %i integer, %f floating-point decimal
    puts format("Pay this period: %0.2f", pay_for_period)
  end

end

e = Employee.new
e.name = "Jane Doe"
e.salary = 50000
e.print_pay_stub