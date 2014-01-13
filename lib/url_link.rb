module UrlLink
  module ::ActionView
    module Helpers # :nodoc:
      module TextHelper

       def proper_url_link(url_link)
        unless url_link.blank?
          
          url_link.gsub( /\s*([^\s]+@[^\s]+\.[^\s]+)\s*/ ) do |email_to|
            "<a href='mailto:#{email_to}'>#{email_to}</a>"
          end

          url_link.gsub( %r{(http|https)://[^\s<]+} ) do |url|
            if url[/(?:png|jpe?g|gif|svg)$/]
              "<img src='#{url}' />"
            else
              "<a href='#{url}' target='_blank'>#{url}</a> "
            end
          end
        end
      end

      def proper_email(url_link)
        unless url_link.blank?
          url_link.gsub( /\s*([^\s]+@[^\s]+\.[^\s]+)\s*/ ) do |email_to|
            "<a href='mailto:#{email_to}'>#{email_to}</a>"
          end
        end
      end

      def proper_html(html_format)
        unless html_format.blank?
          html_format.html_safe
        end
      end

      def url_link(url_link_format)
        unless url_link_format.blank?
         proper_html(proper_email(proper_url_link(url_link_format)))
        end
      end


   end
 end
end

end
