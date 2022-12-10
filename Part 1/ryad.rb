# frozen_string_literal: true

# Class for Ryad
class Ryad
  def initialize(power)
    @summa = 0
    @kek = 1.0
    @eps = 1 / 10.0**power
    @slag = 0
  end

  def count
    100_000_000_000.times do
      @slag = 1 / (@kek * (@kek + 1))
      @summa += @slag
      @kek += 1.0
      break if @summa > 1 - @eps
    end
  end

  def get
    @summa
  end

  def prt
    puts "Количество итераций: #{(@kek - 1).to_i}"
    puts "Точность: #{@eps}"
    puts "Сумма: #{@summa}"
  end
end
