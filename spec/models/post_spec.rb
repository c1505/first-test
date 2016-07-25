require 'rails_helper'

describe Post do
  it "has a valid factory" do
    expect(FactoryGirl.build(:post)).to be_valid
  end

  it "is invalid without a title " do
    expect(FactoryGirl.build(:post, title: nil)).to_not be_valid
  end

  it "upcases and adds an exclamation point" do
    post = FactoryGirl.build(:post)
    expect(post.yell).to eq("POST TITLE!")
  end
end
