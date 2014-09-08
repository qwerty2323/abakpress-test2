require 'rails_helper'

RSpec.describe "posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :name => "MyString",
      :head => "MyString",
      :body => "MyText",
      :parent_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_name[name=?]", "post[name]"

      assert_select "input#post_head[name=?]", "post[head]"

      assert_select "textarea#post_body[name=?]", "post[body]"

      assert_select "input#post_parent_id[name=?]", "post[parent_id]"
    end
  end
end
