# frozen_string_literal: true

require_relative 'functions'
include Math

puts 'Введите нижнюю границу'
down = gets.to_i

puts 'Введите верхнюю границу'
up = gets.to_i

a = Calculator.new(down, up)
a.calc_otr { |x| x + cos(x) }
puts "Result: #{a.trap}"

a = Calculator.new(down, up)
lam = ->(x) { tan(x + 1) / (x + 1) }
a.calc_otr(&lam)
puts "Result: #{a.trap}"
