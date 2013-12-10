# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [{:title => '2 Corinthians 5:17', :rating => 'Christ the Center', :release_date => 'Therefore, if anyone is in Christ, he has become a new creaton. The old has passed away; behold, the new has come.'},
    	  {:title => 'Romans 3:23', :rating => 'Proclaim Christ', :release_date => 'for all have sinned and fallen short of the glory of God'},
    	  {:title => 'Matthew 6:33', :rating => "Being Christ's Disciple", :release_date => 'But seek first the kingdom of God and his righteousness, and all these things will be added to you.'},
      	  {:title => 'John 13: 34-35', :rating => 'Grow in Christlikeness', :release_date => 'A new commandment I give you, that you love one another: just as I hve loved you, you are to love one another. By this, all people will know you are my disciples, if you have love for one another.'},
  	 ]

movies.each do |movie|
  Movie.create!(movie)
end
