class HttpClientViewController < UIViewController
  def viewDidLoad
    super
    view.backgroundColor = UIColor.whiteColor

    @button = UIButton.rounded_rect.tap do |b|
      b.accessibilityLabel = "Start HTTP"
      b.frame = [[20, 100], [view.frame.size.width - 20 * 2, 42]]
      b.on(:touch) do |event|
        BW::HTTP.get('http://www.example.com/') do |response|
          p response
        end
      end
    end
    view << @button
  end
end
