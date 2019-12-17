class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def deposit(deposit)
    amend_balance(deposit)
    receipt(deposit, @balance)
  end

  def withdraw(withdrawal)
    amend_balance(-withdrawal)
    receipt(-withdrawal, @balance)
  end

  private

  def amend_balance(transaction)
    @balance += transaction
  end

  def receipt(transaction, balance)
    transaction > 0 ? 
    Time.now.strftime("%d/%m/%Y") + " || " + transaction.to_s + " || || " + balance.to_s :
    Time.now.strftime("%d/%m/%Y") + " || || " + (transaction - transaction - transaction).to_s + " || " + balance.to_s
  end

end
