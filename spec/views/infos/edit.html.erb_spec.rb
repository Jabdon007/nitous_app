require 'rails_helper'

RSpec.describe "infos/edit", :type => :view do
  before(:each) do
    @info = assign(:info, Info.create!(
      :title => "MyString",
      :desc => "MyString"
    ))
  end

  it "renders the edit info form" do
    render

    assert_select "form[action=?][method=?]", info_path(@info), "post" do

      assert_select "input#info_title[name=?]", "info[title]"

      assert_select "input#info_desc[name=?]", "info[desc]"
    end
  end
end
