module UrlLink
  module ::ActionView
    module Helpers # :nodoc:
      module TextHelper

        def format(url_link)
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

      def url_link(html_format)
        unless html_format.blank?
          html_format.html_safe
        end
      end

    end
  end
end

end
