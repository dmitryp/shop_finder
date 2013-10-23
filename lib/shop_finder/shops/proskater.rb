module ShopFinder
  module Shops
    class Proskater
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        page.search('div#slider_products_small/ul/li/div.small_foto_product/img').map do |a|
          a.attributes['src'].to_s.gsub('images_50x70','bimages')
        end
      end
    end
  end
end
