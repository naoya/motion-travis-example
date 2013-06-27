describe "Application 'Hello'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has no window under testing" do
    @app.windows.size.should == 0
  end
end
