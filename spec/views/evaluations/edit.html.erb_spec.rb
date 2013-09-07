require 'spec_helper'

describe "evaluations/edit" do
  before(:each) do
    @evaluation = assign(:evaluation, stub_model(Evaluation,
      :mentor => "MyString",
      :evaluation => 1
    ))
  end

  it "renders the edit evaluation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", evaluation_path(@evaluation), "post" do
      assert_select "input#evaluation_mentor[name=?]", "evaluation[mentor]"
      assert_select "input#evaluation_evaluation[name=?]", "evaluation[evaluation]"
    end
  end
end
