module ShopFinder
  module Shops
    class Proskater
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup

        page.search('div#slider_products_small/ul/li/div.small_foto_product/img').map do |a|
          path = '/' + a.attributes['src'].to_s.gsub('images_50x70','bimages')
          uri.path = path
          uri.query = nil
          uri.to_s
        end
      end
    end
  end
end