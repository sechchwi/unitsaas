class RandomGenerator < ActiveRecord::Base
   attr_accessor :title, :query
  
   def generate_verse
       table = Movie.where({self.query.include?(:rating) == true})
       verse = table[0]
       return verse
   end

end
