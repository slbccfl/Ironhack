
require_relative("lib/payable.rb")
require_relative("lib/caffeineconsumer.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")

programmer = Programmer.new
designer = Designer.new

puts "Designer methods: "
designer.design_things
puts
puts "Programmer methods: "
programmer.program


