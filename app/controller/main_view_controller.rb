class MainViewController < UIViewController
  def viewDidLoad
    self.view.backgroundColor = UIColor.whiteColor

    @label = UILabel.new
    @label.frame = [[10, 10], [320, 20]]
    @label.text = "Hello, RubyMotion!"

    self.view.addSubview(@label)
  end
end
