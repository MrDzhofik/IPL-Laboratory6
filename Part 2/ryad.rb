# frozen_string_literal: true

# Class for Ryad with Enumerable
class Ryad
  def initialize(power)
    @summa = 0
    @k = 1.0
    @e = 1 / 10.0**power
    @slag = 0
  end

  def fill_array
    @enu = []
    @i = 0
    100_000_000_000.times do
      @slag = 1 / (@k * (@k + 1))
      @enu[@i] = @slag
      @i += 1
      @k += 1.0
      @summa += @slag
      return @summa if @summa + @e > 1.0
    end
  end

  def count
    @k = 0
    @summa = 0
    @summa = @enu.inject(0, :+)
    puts @summa
  end

  def get
    @summa
  end

  def prt
    puts "Количество итераций: #{(@i - 1).to_i}"
    puts "Точность: #{@e}"
    puts "Сумма: #{@summa}"
  end
end
