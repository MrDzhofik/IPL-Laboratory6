# frozen_string_literal: true

# get input
require_relative 'ryad'

puts 'Enter 4 or 5'
a = Ryad.new(gets.to_i)
a.fill_array
# a.count
a.prt
