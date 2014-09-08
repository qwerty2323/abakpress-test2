require 'rails_helper'

RSpec.describe "posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :name => "Name",
      :head => "Head",
      :body => "MyText",
      :parent_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Head/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
