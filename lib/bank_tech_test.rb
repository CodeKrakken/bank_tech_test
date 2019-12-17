class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def deposit(deposit)
    @balance += deposit
  end

  def withdraw(withdrawal)
    @balance -= withdrawal
  end

end
