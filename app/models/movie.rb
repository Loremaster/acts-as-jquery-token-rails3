class Movie < ActiveRecord::Base
  acts_as_taggable

  attr_reader :tag_list_tokens
  attr_accessible :name, :tag_list_tokens

  # Using virtual attr to set in actual field correct data,
  # because js return new tags in such format "'tag','tag2'".
  def tag_list_tokens=(tokens)
    self.tag_list = tokens.gsub("'", "")
  end
end
