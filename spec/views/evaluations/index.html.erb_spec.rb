require 'spec_helper'

describe "evaluations/index" do
  before(:each) do
    assign(:evaluations, [
      stub_model(Evaluation,
        :mentor => "Mentor",
        :evaluation => 1
      ),
      stub_model(Evaluation,
        :mentor => "Mentor",
        :evaluation => 1
      )
    ])
  end

  it "renders a list of evaluations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mentor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
