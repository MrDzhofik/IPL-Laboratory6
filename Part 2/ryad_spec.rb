# frozen_string_literal: true

# test
require_relative 'ryad'

RSpec.describe Ryad do
  it 'must return right value with accuracy 10^(-4)' do
    a = Ryad.new(4)
    a.fill_array
    expect(a.get).to be_within(0.001).of(1)
  end

  it 'must return right value with accuracy 10^(-5)' do
    a = Ryad.new(5)
    a.fill_array
    expect(a.get).to be_within(0.0001).of(1)
  end
end
