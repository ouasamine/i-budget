require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'should not be valid without a name and user' do
    group = Group.create
    expect(group).to_not be_valid
  end

  it 'should have a user' do
    user = User.create(name: 'Amine', email: 'test@example.com', password: 123_456)
    group = Group.create(name: 'Group1', user:)
    expect(group.user).to eq(user)
  end

  it 'should have a transaction' do
    user = User.create(name: 'Amine', email: 'test@example.com', password: 123_456)
    group = Group.create(name: 'Group1', user:)
    transac = Transac.create(name: 'Transac1', author: user, group:, amount: 100)
    expect(group.transacs).to include(transac)
  end
end
