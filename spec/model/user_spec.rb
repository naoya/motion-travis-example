describe User do
  before do
    @user = User.new
  end

  it "has appropriate attributes" do
    @user.should.respond_to :name
    @user.should.respond_to :email
  end
end
