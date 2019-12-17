class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def deposit(deposit)
    @balance += deposit
    return Time.now.strftime("%d/%m/%Y") + " || " + @balance.to_s
  end

  def withdraw(withdrawal)
    @balance -= withdrawal
    return Time.now.strftime("%d/%m/%Y") + " || " + @balance.to_s
  end

end
