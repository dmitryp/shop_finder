module ShopFinder
  module Shops
    class Topbrands
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('nav.thumbs/div/a.setimg/img').map do |a|
          uri.scheme + ':' + a.attributes['s2src'].value
        end
      end
    end
  end
end