class Account
  
  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(credit)
    amend_balance(credit)
    store(credit, @balance)
  end

  def debit(debit)
    amend_balance(-debit)
    store(-debit, @balance)
  end

  def statement
    "date || credit || debit || balance\n" + @transactions.join("\n")
    # "date || credit || debit || balance\n#{@transactions[1]}\n#{@transactions[0]}"
  end

  private

  def amend_balance(funds)
    @balance += funds
  end

  def store(transaction, balance)
    transaction > 0 ? 
    @transactions.unshift(Time.now.strftime("%d/%m/%Y") + " || " + sprintf("%.2f", transaction).to_s + " || || " + sprintf("%.2f", balance).to_s) :
    @transactions.unshift(Time.now.strftime("%d/%m/%Y") + " || || " + sprintf("%.2f", (transaction - transaction - transaction)).to_s + " || " + sprintf("%.2f", balance).to_s)
    receipt
  end

  def receipt
    @transactions.first
  end

end
