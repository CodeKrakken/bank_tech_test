require 'bank_tech_test'

describe 'account' do

  before(:each) do
    @account = Account.new
  end

  it 'allows the account holder to deposit 10' do
    expect(@account.deposit(10)).to eq("17/12/2019 || 10")
  end

  it 'keeps a running total of deposits' do
    @account.deposit(10)
    expect(@account.deposit(10)).to eq("17/12/2019 || 20")
  end

  it 'allows the account holder to withdraw 10' do
    expect(@account.withdraw(10)).to eq("17/12/2019 || -10")
  end

  it 'keeps track of a combination of withdrawals and deposits' do
    @account.deposit(10)
    @account.deposit(10)
    @account.withdraw(5)
    expect(@account.withdraw(35)).to eq("17/12/2019 || -20")
  end

  it 'returns the date along with the balance' do
    expect(@account.deposit(10)).to eq("17/12/2019 || 10")
  end
end
