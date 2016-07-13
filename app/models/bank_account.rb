class BankAccount < ActiveRecord::Base

  def deposit(num)
    update_attributes(amount: self.amount + num) if num.positive?
  end

  def balance
    self.amount
  end

  def withdraw(num)
    if num.positive? && num <= self.amount
      update_attributes(amount: self.amount - num)
    end
  end
end
