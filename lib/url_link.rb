class UrlLink
  def self.format(url_link)
    unless url_link.blank?
     url_link.gsub( %r{(http|https)://[^\s<]+} ) do |url|
      if url[/(?:png|jpe?g|gif|svg)$/]
        "<img src='#{url}' />"
      else
        "<a href='#{url}' target='_blank'>#{url}</a> "
      end
     end
    end
  end
end


# def url_link(proper_url_link)
#   unless html_format.blank?
#     html_format.html_safe
#   end
# end
