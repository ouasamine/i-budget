require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not be valid without a name' do
    user = User.create
    expect(user).to_not be_valid
  end

  it 'should have a group' do
    user = User.create(name: 'Amine', email: 'test@example.com', password: 123_456)
    group = Group.create(name: 'Group1', user:)
    expect(user.groups).to include(group)
  end

  it 'should have a transaction' do
    user = User.create(name: 'Amine', email: 'test@example.com', password: 123_456)
    group = Group.create(name: 'Group1', user:)
    transac = Transac.create(name: 'Transac1', author: user, group:, amount: 100)
    expect(user.transacs).to include(transac)
  end
end
