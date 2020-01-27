require_relative 'log'

class Account
  
  def initialize
    @balance = 0
    @transactions = []
    @log = Log.new
  end

  def credit(credit)
    amend_balance(credit)
    @log.store(credit, @balance)
    credit
  end

  def debit(debit)
    amend_balance(-debit)
    @log.store(-debit, @balance)
    debit
  end

  def statement
    "date || credit || debit || balance\n" + @transactions.join("\n")
  end

  private

  def amend_balance(funds)
    @balance += funds
  end

end
