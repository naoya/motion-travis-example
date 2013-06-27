class MainViewController < UIViewController
  def viewDidLoad
    super
    margin = 20

    self.view.backgroundColor = UIColor.whiteColor

    @button = UIButton.rounded_rect.tap do |b|
      b.setTitle('Hello, RubyMotion!', forState:UIControlStateNormal)
      b.accessibilityLabel = "Hello Button"
      b.frame = [[margin, 100], [view.frame.size.width - margin * 2, 42]]
      b.on(:touch) do |event|
        @was_tapped = true
      end
    end

    view << @button
  end
end
