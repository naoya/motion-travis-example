describe MainViewController do
  tests MainViewController

  it "should not be nil" do
    view("Hello Button").should.not.be.nil
  end

  it "changes instance variable when button is tapped" do
    tap "Hello Button"
    controller.instance_variable_get("@was_tapped").should == true
  end
end
