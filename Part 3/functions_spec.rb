# frozen_string_literal: true

# test for Part 3
require_relative 'functions'

RSpec.describe Calculator do
  include Math

  it 'should return right values with -1 and 4' do
    a = Calculator.new(-1, 4)
    lam = ->(x) { x + cos(x) }
    a.calc_otr(&lam)
    expect(a.trap.round(2)).to eq(9.92)
  end

  it 'should return right values with 2 and 6' do
    b = Calculator.new(2, 6)
    lam = ->(x) { x + cos(x) }
    b.calc_otr(&lam)
    expect(b.trap.round(2)).to eq(16.38)
  end

  it 'should return right values with 1 and 2' do
    c = Calculator.new(1, 2)
    lam = ->(x) { tan(x + 1) / (x + 1) }
    c.calc_otr(&lam)
    expect(c.trap.round(2)).to eq(-0.57)
  end
end
