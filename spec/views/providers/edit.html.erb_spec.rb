require 'rails_helper'

RSpec.describe "providers/edit", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :certificator => "MyString",
      :years_practiced => 1
    ))
  end

  it "renders the edit provider form" do
    render

    assert_select "form[action=?][method=?]", provider_path(@provider), "post" do

      assert_select "input#provider_name[name=?]", "provider[name]"

      assert_select "input#provider_address[name=?]", "provider[address]"

      assert_select "input#provider_city[name=?]", "provider[city]"

      assert_select "input#provider_state[name=?]", "provider[state]"

      assert_select "input#provider_zip[name=?]", "provider[zip]"

      assert_select "input#provider_certificator[name=?]", "provider[certificator]"

      assert_select "input#provider_years_practiced[name=?]", "provider[years_practiced]"
    end
  end
end
