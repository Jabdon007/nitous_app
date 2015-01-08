require 'rails_helper'

RSpec.describe "infos/new", :type => :view do
  before(:each) do
    assign(:info, Info.new(
      :title => "MyString",
      :desc => "MyString"
    ))
  end

  it "renders new info form" do
    render

    assert_select "form[action=?][method=?]", infos_path, "post" do

      assert_select "input#info_title[name=?]", "info[title]"

      assert_select "input#info_desc[name=?]", "info[desc]"
    end
  end
end
