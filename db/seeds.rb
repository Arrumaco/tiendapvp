# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#SpreeCore::Engine.load_seed if defined?(SpreeCore)
#SpreeAuth::Engine.load_seed if defined?(SpreeAuth)

#Rake::Task["db:load_dir"].invoke( "default" )
#puts "Default data has been loaded"
Rake::Task["db:load_dir"].invoke( "default" )

puts "Ahora si cargo la data"

#SpreeCore::Engine.load_seed if defined?(SpreeCore)

#SpreeAuth::Engine.load_seed if defined?(SpreeAuth)
