class Movie < ApplicationRecord
  serialize :genres
  serialize :cast
end
