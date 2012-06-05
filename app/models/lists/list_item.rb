module Lists
  class ListItem < ActiveRecord::Base
    belongs_to :list, inverse_of: :list_items

    attr_accessible :body, :position, :subject

    def to_s
      subject
    end
  end
end
