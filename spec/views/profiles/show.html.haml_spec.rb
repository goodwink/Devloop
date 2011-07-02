require 'spec_helper'

describe "profiles/show.html.haml" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :name => "Name",
      :description => "Description",
      :homepage => "Homepage",
      :statusnet => "Statusnet",
      :gitorious => "Gitorious"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Homepage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Statusnet/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gitorious/)
  end
end
