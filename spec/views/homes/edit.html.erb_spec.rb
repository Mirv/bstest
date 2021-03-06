require 'rails_helper'

RSpec.describe "homes/edit", type: :view do
  before(:each) do
    @home = assign(:home, Home.create!(
      :name => "MyString",
      :motd => "MyText"
    ))
  end

  it "renders the edit home form" do
    render

    assert_select "form[action=?][method=?]", home_path(@home), "post" do

      assert_select "input#home_name[name=?]", "home[name]"

      assert_select "textarea#home_motd[name=?]", "home[motd]"
    end
  end
end
