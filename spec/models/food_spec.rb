require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(name: 'soup', description: 'soup description', price: 10.0) }

  it 'food name should be present' do
    expect(subject).to be_valid
  end

  it 'food name should be present' do
    expect(Food.new(name: nil)).to_not be_valid
  end

  it 'food description should be present' do
    expect(Food.new(description: nil)).to_not be_valid
  end

  it 'food price should be present' do
    expect(Food.new(price: nil)).to_not be_valid
  end

end
