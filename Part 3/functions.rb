# frozen_string_literal: true

# Calculate func
class Calculator
  def initialize(down, upper)
    @down = down
    @upper = upper
    @xor = 1
    @num = (@down.abs + @upper.abs)
    @summa = 0
  end

  def calc_otr
    @func = yield @down
    @funv = yield @upper
    @sum = 0
    (@num - 1).times do
      @sum += yield @xor
      @xor += 1
    end
    @summa = @sum
  end

  def trap
    ((@func + @funv) / 2 + @summa) * (@upper - @down) / @num
  end
end
