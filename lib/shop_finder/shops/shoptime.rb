module ShopFinder
  module Shops
    class Shoptime
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('div.b-product_thumb_wrapper/div/a.pic').map do |a|
          a.attributes['href'].value
        end
      end
    end
  end
end