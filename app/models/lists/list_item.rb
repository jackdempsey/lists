module Lists
  class ListItem < ActiveRecord::Base
    acts_as_list scope: :list_id

    belongs_to :list, inverse_of: :list_items

    attr_accessible :body, :position, :subject

    def to_s
      subject
    end
  end
end
