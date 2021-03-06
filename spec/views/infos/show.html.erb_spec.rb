require 'rails_helper'

RSpec.describe "infos/show", :type => :view do
  before(:each) do
    @info = assign(:info, Info.create!(
      :title => "Title",
      :desc => "Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Desc/)
  end
end
