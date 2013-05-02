# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[Person, Pet, Writer, Book, Citizen, Ssn, Country, City, Street, Student, Subject,
  NewStudent, NewSubject, Grade, Article, Post, Image].each do |klass|
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

me   = Student.create(:name => 'Andrea')
math = Subject.create(:name => 'math')
me.subjects << math

me   = NewStudent.create(:name => 'Andrea')
math = NewSubject.create(:name => 'math')
a    = Grade.create(:value => 'A', :new_student => me, :new_subject => math)

article = Article.create(:title => 'Obama wins')
post    = Post.create(:title => 'Today I am happy')
image   = Image.create :path => 'some/path.png', :imageable => article
