require_relative 'account'

class Log

  def initialize
    @transactions = []
  end

  def store(transaction, balance)
    transaction > 0 ? 
    @transactions.unshift(Time.now.strftime("%d/%m/%Y") + " || " + sprintf("%.2f", transaction).to_s + " || || " + sprintf("%.2f", balance).to_s) :
    @transactions.unshift(Time.now.strftime("%d/%m/%Y") + " || || " + sprintf("%.2f", (transaction - transaction - transaction)).to_s + " || " + sprintf("%.2f", balance).to_s)
    receipt
  end

  private

  def receipt
    @transactions.first
  end

end