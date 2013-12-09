class Movie < ActiveRecord::Base
  acts_as_taggable

  attr_accessible :name, :tag_list
end
