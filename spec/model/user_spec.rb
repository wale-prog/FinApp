require 'rails_helper'

RSpec.describe User, type: :model do
  before (:all) do 
    @user = User.create(name: 'John')
  end

  it "is valid with valid attributes" do
    @user.name = nil
    expect(@user).to_not be_valid
  end

end