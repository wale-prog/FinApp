require 'rails_helper'

RSpec.describe Category, type: :model do

  before (:all) do 
    @user = User.create(name: 'John')
    @category = @user.categories.create(name: 'Rent', icon: 'fas fa-home')
  end

  it "is valid with valid attributes" do
    expect(@category).to be_valid
  end

  it "is not valid without a name" do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it "is not valid without an icon" do
    @category.icon = nil
    expect(@category).to_not be_valid
  end

  it "is not valid without a user" do
    @category.user_id = nil
    expect(@category).to_not be_valid
  end
end