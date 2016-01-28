require 'rails_helper'

RSpec.describe "providers/index", type: :view do
  before(:each) do
    assign(:providers, [
      Provider.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :certificator => "Certificator",
        :years_practiced => 1
      ),
      Provider.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :certificator => "Certificator",
        :years_practiced => 1
      )
    ])
  end

  it "renders a list of providers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Certificator".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
