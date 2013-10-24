module ShopFinder
  module Shops
    class Wildberries
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri
        page.search('ul.carousel/li/a').map do |a|
          uri.scheme + ':' + a.attributes['rev'].value
        end
      end
    end
  end
end