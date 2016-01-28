require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :name => "MyString",
      :type => "",
      :breed => "MyString",
      :weight => "MyString"
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input#pet_name[name=?]", "pet[name]"

      assert_select "input#pet_type[name=?]", "pet[type]"

      assert_select "input#pet_breed[name=?]", "pet[breed]"

      assert_select "input#pet_weight[name=?]", "pet[weight]"
    end
  end
end
