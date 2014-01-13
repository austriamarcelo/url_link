require 'test/unit'
require 'url_link'

class UrlLinkTest < Test::Unit::TestCase
  def test_http
      assert_equal "Welcome to my website <a href='http://www.mywebsite.com'>http://www.mywebsite.com</a>",
      url_link("Welcome to my website http://www.mywebsite.com")
  end

  def test_img
      assert_equal "<img src='http://blogspot.com/images/screenshot.png'/>",
      url_link("http://blogspot.com/images/screenshot.png")
  end

  def test_email
      assert_equal "this is my email: <a href='mailto:marceloaustria@yahoo.com'>marceloaustria@yahoo.com</a>",
      url_link("this is my email: marceloaustria@yahoo.com")
  end

end
