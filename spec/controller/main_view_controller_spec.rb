describe MainViewController do
  tests MainViewController

  it "has a label" do
    view("Hello, RubyMotion!").should.not.be.nil
  end
end
