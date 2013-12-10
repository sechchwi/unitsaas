class Movie < ActiveRecord::Base
  def self.all_ratings
    ["Christ the Center", "Proclaim Christ", "Being Christ's Disciple", "Grow in Christlikeness"]
  end
end
