# Lamoda shop
# How to run:
# oprn rails console in the screen
# ShopFinder::PhotoUpdater.new(:shop_original_id => 1001).update
module ShopFinder
  module Shops
    class Lamoda
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('ul.product-images-list/li.product-image-li/img').map do |a|
          uri.scheme + ':' + a.attributes['src'].value.gsub('img44x63','img320x461')
        end
      end
    end
  end
end