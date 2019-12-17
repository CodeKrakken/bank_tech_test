require 'bank_tech_test'

# before :each do
#   account = Account.new
# end

describe 'account' do

  it 'allows the account holder to deposit 10' do
    account = Account.new
    expect(account.deposit(10)).to eq(10)
  end

  it 'keeps a running total of deposits' do
    account = Account.new
    account.deposit(10)
    expect(account.deposit(10)).to eq(20)
  end
end
