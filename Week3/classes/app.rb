# app.rb

require_relative("lib/animal.rb")

#qualities 
# - name
# - noise

#behavior
# - make noise
# - shout

dymitri = Animal.new("Dymitri", "Huff...")
dymitri.make_noise
dymitri.shout

chewie = Animal.new("chewie", "Woo!")
chewie.make_noise
chewie.shout