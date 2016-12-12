require 'rails_helper'

RSpec.describe Post, type: :model do
  
  before(:all)do
    @post = Post.new(title: "Post title", text: "Post text")
  end

  it "should have a matching title" do
    expect(@post.title).to eq("Post title")
  end

  it "should have a matching text" do
    expect(@post.text).to eq("Post text")
  end
end