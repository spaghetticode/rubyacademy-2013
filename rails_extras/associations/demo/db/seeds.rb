# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[Person, Pet, Writer, Book, Citizen, Ssn, Country, City, Street].each do |klass|
  klass.delete_all
end

me = Person.create!(:name => 'andrea')
me.pets.create!(:name => 'ciuffo', :person_id => me.id)

me = Writer.create!(:name => 'andrea')
Book.create!(:name => 'learn ruby', :author_id => me.id)

kane = Citizen.create!(:name => 'Kane')
ssn  = Ssn.create!(:code => '123ASLKJ')
kane.update_attribute :ssn, ssn

italy   = Country.create(:name => 'Italy')
milan   = City.create(:name => 'Milan', :country => italy)
street  = Street.create(:name => 'via Garibaldi', :city => milan)
