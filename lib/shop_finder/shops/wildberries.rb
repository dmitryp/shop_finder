module ShopFinder
  module Shops
    class Wildberries
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri
        page.search('ul.carousel/li/a.enabledZoom').map do |a|
          uri.scheme + ':' + a.attributes['rev'].value unless a.attributes['rev'].nil?
        end.compact
      end
    end
  end
end