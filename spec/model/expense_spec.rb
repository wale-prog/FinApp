require 'rails_helper'

RSpec.describe Expense, type: :model do
  before (:all) do 
    @user = User.create(name: 'John')
    @expense = @user.expenses.create(name: 'Rent', amount: 1000)
  end

  it "is valid with valid attributes" do
    expect(@expense).to be_valid
  end

  it "is not valid without a name" do
    @expense.name = nil
    expect(@expense).to_not be_valid
  end

  it "is not valid without an amount" do
    @expense.amount = nil
    expect(@expense).to_not be_valid
  end

  it "is not valid without a user" do
    @expense.user_id = nil
    expect(@expense).to_not be_valid
  end

  it "is not valid with a negative amount" do
    @expense.amount = -1
    expect(@expense).to_not be_valid
  end

  it "is not valid with a zero amount" do
    @expense.amount = 0
    expect(@expense).to_not be_valid
  end

end