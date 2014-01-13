require "rails"
require 'erb'
require 'cgi'
require 'active_support/core_ext/class/attribute_accessors'
require 'action_pack'
require 'action_view/helpers/capture_helper'
require 'action_view/helpers/sanitize_helper'
require 'action_view/helpers/url_helper'
require 'action_view/helpers/tag_helper'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/core_ext/string/encoding'
require 'action_dispatch/testing/assertions'
require 'action_view/helpers/text_helper'
require 'action_view/helpers/output_safety_helper'

require 'test/unit'
require "url_link"

class TestUrlLink < Test::Unit::TestCase
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::SanitizeHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::OutputSafetyHelper
  include ActionDispatch::Assertions::DomAssertions

  # def test_http
  #     assert_equal "Welcome to my website <a href='http://www.mywebsite.com'>http://www.mywebsite.com</a>",
  #     url_link("Welcome to my website http://www.mywebsite.com")
  # end

  # def test_img
  #     assert_equal "<img src='http://blogspot.com/images/screenshot.png'/>",
  #     url_link("http://blogspot.com/images/screenshot.png")
  # end

  # def test_email
  #     assert_equal "this is my email: <a href='mailto:marceloaustria@yahoo.com'>marceloaustria@yahoo.com</a>",
  #     url_link("this is my email: marceloaustria@yahoo.com")
  # end

 def test_url_link
    link_raw = 'http://www.rubyonrails.org/images/rails.png'
    link_result = %Q(<img src="#{link_raw}" />)
    assert_equal link_result, url_link(link_result)
  end
end
