class Account
  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def credit(credit)
    amend_balance(credit)
    receipt(credit, @balance)
  end

  def debit(debit)
    amend_balance(-debit)
    receipt(-debit, @balance)
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
