require 'bank_tech_test'
require 'web_helpers'

describe 'account' do

  before(:each) do
    @account = Account.new
  end

  it 'allows the account holder to credit 10' do
    expect(@account.credit(10)).to eq("#{todays_date} || 10 || || 10")
  end

  it 'keeps a running balance' do
    @account.credit(10)
    expect(@account.credit(10)).to eq("#{todays_date} || 10 || || 20")
  end

  it 'allows the account holder to debit 10' do
    expect(@account.debit(10)).to eq("#{todays_date} || || 10 || -10")
  end

  it 'keeps track of a combination of debits and credits' do
    @account.credit(10)
    @account.credit(10)
    @account.debit(5)
    expect(@account.debit(35)).to eq("#{todays_date} || || 35 || -20")
  end

  it 'returns the date along with the balance' do
    expect(@account.credit(10)).to eq("#{todays_date} || 10 || || 10")
  end

  it 'returns the transaction amount for a credit along with date and balance' do
    expect(@account.credit(10)).to eq("#{todays_date} || 10 || || 10")
  end

  it 'returns a receipt with credit column' do
    expect(@account.credit(10)).to eq("#{todays_date} || 10 || || 10")
  end

  it 'returns a receipt with debit column' do
    expect(@account.debit(10)).to eq("#{todays_date} || || 10 || -10")
  end
end
