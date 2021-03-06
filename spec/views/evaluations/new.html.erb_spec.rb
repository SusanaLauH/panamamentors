require 'spec_helper'

describe "evaluations/new" do
  before(:each) do
    assign(:evaluation, stub_model(Evaluation,
      :mentor => "MyString",
      :evaluation => 1
    ).as_new_record)
  end

  it "renders new evaluation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", evaluations_path, "post" do
      assert_select "input#evaluation_mentor[name=?]", "evaluation[mentor]"
      assert_select "input#evaluation_evaluation[name=?]", "evaluation[evaluation]"
    end
  end
end
