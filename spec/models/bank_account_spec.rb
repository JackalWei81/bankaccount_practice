require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  it "可以存錢" do
    account = BankAccount.create(name: "kk", amount: 100)
    account.deposit(100)
    expect(account.balance).to be 200
  end

  it "不可以存負的錢" do
    account = BankAccount.create(name: "kk", amount: 100)
    account.deposit(-100)
    expect(account.balance).to be 100
  end

  it "可以領錢" do
    account = BankAccount.create(name: "kk", amount: 100)
    account.withdraw(10)
    account.withdraw(30)
    expect(account.balance).to be 60
  end

  it "不可以領負的錢" do
    account = BankAccount.create(name: "kk", amount: 100)
    account.withdraw(-100)
    expect(account.balance).to be 100
  end
end
