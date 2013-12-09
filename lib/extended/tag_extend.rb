module TagExtend
  extend ActiveSupport::Concern

  included do
    scope :by_tag_name, -> name { where("name like ?", "%#{name}%") }

    def self.token_input_tags
      # Jquery.tokeninput need special data with format [{id: '', name: ''}, {}, ...]. However we should set name in both cases otherwise tag will have id as name.
      scoped.map{|t| {id: t.name, name: t.name }}
    end
  end
end
