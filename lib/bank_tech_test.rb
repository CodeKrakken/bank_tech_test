class Account
  attr_reader :balance
  
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
    "date || credit || debit || balance\n#{@transactions[0]}\n#{@transactions[1]}"
  end

  private

  def amend_balance(funds)
    @balance += funds
  end

  def store(transaction, balance)
    transaction > 0 ? 
    @transactions << Time.now.strftime("%d/%m/%Y") + " || " + sprintf("%.2f", transaction).to_s + " || || " + sprintf("%.2f", balance).to_s :
    @transactions << Time.now.strftime("%d/%m/%Y") + " || || " + sprintf("%.2f", (transaction - transaction - transaction)).to_s + " || " + sprintf("%.2f", balance).to_s
    receipt
  end

  def receipt
    @transactions.last
  end

end
