module Lists
  class List < ActiveRecord::Base
    has_many :list_items
    belongs_to :listable, polymorphic: true

    attr_accessible :body, :position, :subject, :listable, :listable_type, :listable_id, :list_items_attributes

    accepts_nested_attributes_for :list_items, reject_if: ->(o) {o[:subject].blank? and o[:body].blank?}, allow_destroy: true
  end
end
