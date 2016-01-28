require 'rails_helper'

RSpec.describe "providers/show", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :name => "Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :certificator => "Certificator",
      :years_practiced => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Certificator/)
    expect(rendered).to match(/1/)
  end
end
