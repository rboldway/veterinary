require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        :name => "Name",
        :type => "Type",
        :breed => "Breed",
        :weight => "Weight"
      ),
      Pet.create!(
        :name => "Name",
        :type => "Type",
        :breed => "Breed",
        :weight => "Weight"
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
  end
end
