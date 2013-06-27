describe MainViewController do
  tests MainViewController

  it "should not be nil" do
    ap view("Hello Button")
    view("Hello Button").should.not.be.nil
  end

  it "has right title" do
    view("Hello Button").currentTitle.should.equal "Hello, RubyMotion!"
  end

  it "changes instance variable when button is tapped" do
    tap "Hello Button"
    controller.instance_variable_get("@was_tapped").should == true
  end
end
