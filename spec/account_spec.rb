require 'account'
require 'web_helpers'

describe 'account' do

  before(:each) do
    @account = Account.new
  end

  it 'allows the account holder to credit 10' do
    expect(@account.credit(10)).to eq(10)
  end

  it 'keeps a running balance' do
    @account.credit(10)
    expect(@account.credit(10)).to eq(20)
  end

  it 'allows the account holder to debit 10' do
    @account.credit(20)
    expect(@account.debit(10)).to eq(10)
  end

  it 'returns a statement of historical transactions, newest first' do
    @account.credit(1000)
    @account.credit(2000)
    expect(@account.statement).to eq("date || credit || debit || balance\n#{todays_date} || 2000.00 || || 3000.00\n#{todays_date} || 1000.00 || || 1000.00")
  end

  it 'returns a full statement of variable length' do
    @account.credit(1000)
    @account.credit(2000)
    @account.debit(500)
    expect(@account.statement).to eq("date || credit || debit || balance\n#{todays_date} || || 500.00 || 2500.00\n#{todays_date} || 2000.00 || || 3000.00\n#{todays_date} || 1000.00 || || 1000.00")
  end
end
