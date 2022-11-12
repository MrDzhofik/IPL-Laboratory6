# frozen_string_literal: true

# Class for Ryad
class Ryad
  def initialize(power)
    @summa = 0
    @k = 1.0
    @e = 1 / 10.0**power
    @slag = 0
  end

  def count
    100_000_000_000.times do
      @slag = 1 / (@k * (@k + 1))
      @summa += @slag
      @k += 1.0
      break if @summa > 1 - @e
    end
  end

  def get
    @summa
  end

  def prt
    puts "Количество итераций: #{(@k - 1).to_i}"
    puts "Точность: #{@e}"
    puts "Сумма: #{@summa}"
  end
end
