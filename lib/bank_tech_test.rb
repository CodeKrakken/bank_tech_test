class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def deposit(deposit)
    @balance += deposit
    receipt(deposit, @balance)
  end

  def withdraw(withdrawal)
    @balance -= withdrawal
    receipt(withdrawal, @balance)
  end

  private

  def receipt(transaction, balance)
    Time.now.strftime("%d/%m/%Y") + " || " + transaction.to_s + " || " + balance.to_s
  end

end
