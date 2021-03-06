require 'rails_helper'

RSpec.describe "infos/index", :type => :view do
  before(:each) do
    assign(:infos, [
      Info.create!(
        :title => "Title",
        :desc => "Desc"
      ),
      Info.create!(
        :title => "Title",
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of infos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
