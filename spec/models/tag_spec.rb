require 'rails_helper'

RSpec.describe Tag, type: :model do
  
  before(:all)do
    @tag = Tag.new(name: "Tag name")
  end

  it "should have a matching name" do
    expect(@tag.name).to eq("Tag name")
  end
end