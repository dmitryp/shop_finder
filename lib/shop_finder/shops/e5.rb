module ShopFinder
  module Shops
    class E5
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('div.gallery-full-images/a.ad-colorbox').map do |a|
          uri.path = a.attributes['href'].value
          uri.to_s
        end
      end
    end
  end
end