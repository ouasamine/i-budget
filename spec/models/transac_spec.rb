require 'rails_helper'

RSpec.describe Transac, type: :model do
  it 'should not be valid without a name, author and group' do
    transac = Transac.create
    expect(transac).to_not be_valid  
  end

  it 'should have a user' do
    user = User.create(name: 'Amine', email: 'test@example.com', password: 123456)
    group = Group.create(name: 'Group1', user: user)
    transac = Transac.create(name: 'Transac1', author: user, group: group, amount: 100)
    expect(transac.author).to eq(user)
  end

  it 'should have a group' do
    user = User.create(name: 'Amine', email: 'test@example.com', password: 123456)
    group = Group.create(name: 'Group1', user: user)
    transac = Transac.create(name: 'Transac1', author: user, group: group, amount: 100)
    expect(transac.group).to eq(group)
  end
end