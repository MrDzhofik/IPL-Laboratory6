# frozen_string_literal: true

# Calculate func
class Calculator
  def initialize(down, upper)
    @a = down
    @b = upper
    @x = 1
    @n = (@a.abs + @b.abs)
    @summa = 0
  end

  def calc_otr
    @func = yield @a
    @funv = yield @b
    @s = 0
    (@n - 1).times do
      @s += yield @x
      @x += 1
    end
    @summa = @s
  end

  def trap
    ((@func + @funv) / 2 + @summa) * (@b - @a) / @n
  end
end
