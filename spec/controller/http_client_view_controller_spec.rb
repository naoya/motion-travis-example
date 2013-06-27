describe HttpClientViewController do
  extend WebStub::SpecHelpers
  tests HttpClientViewController

  it "has a button" do
    view("Start HTTP").should.not.be.nil
  end

  it "sends a http request when button is tapped" do
    stub = stub_request(:get, 'http://www.example.com/')
    tap "Start HTTP"
    stub.should.be.requested
  end
end
