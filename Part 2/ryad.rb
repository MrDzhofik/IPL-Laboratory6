# frozen_string_literal: true

# Class for Ryad with Enumerable
class Ryad
  def initialize(power)
    @summa = 0
    @kek = 1.0
    @eps = 1 / 10.0**power
  end

  def fill_array
    @enu = []
    @index = 0
    100_000_000_000.times do
      slag = 1 / (@kek * (@kek + 1))
      @enu[@index] = slag
      @index += 1
      @kek += 1.0
      @summa += slag
      return @summa if @summa + @eps > 1.0
    end
  end

  def count
    @kek = 0
    @summa = 0
    @summa = @enu.inject(0, :+)
    puts @summa
  end

  def get
    @summa
  end

  def prt
    puts "Количество итераций: #{(@index - 1).to_i}"
    puts "Точность: #{@eps}"
    puts "Сумма: #{@summa}"
  end
end
