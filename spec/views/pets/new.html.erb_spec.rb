require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      :name => "MyString",
      :type => "",
      :breed => "MyString",
      :weight => "MyString"
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input#pet_name[name=?]", "pet[name]"

      assert_select "input#pet_type[name=?]", "pet[type]"

      assert_select "input#pet_breed[name=?]", "pet[breed]"

      assert_select "input#pet_weight[name=?]", "pet[weight]"
    end
  end
end
