require 'spec_helper'

describe Lists::List do
  describe "listable" do
    it "can be related to a listable object" do
      owning_list = Lists::List.create(subject: "this will be the owning list")
      owning_list.save

      list = Lists::List.new(listable: owning_list)
      list.save
      list.listable.should eq(owning_list)
    end

    it "has many items" do
      list = Lists::List.new
      list.list_items.new(subject: "foo", body: 'bar')
      list.save
      list.list_items.first.subject.should eq 'foo'
      list.list_items.first.body.should eq 'bar'
    end
  end
end
