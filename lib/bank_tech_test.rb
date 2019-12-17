class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def deposit(deposit)
    @balance += deposit
    receipt(@balance)
  end

  def withdraw(withdrawal)
    @balance -= withdrawal
    receipt(@balance)
  end

  private

  def receipt(balance)
    Time.now.strftime("%d/%m/%Y") + " || " + balance.to_s
  end

end
