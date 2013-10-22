module ShopFinder
  module Shops
    class Mexx
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('div.Imgblock/div/a.galleryitem').map do |a|
          a.attributes['href'].value
        end
      end
    end
  end
end