module ShopFinder
  module Shops
    class Showrooms
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('ul.image-slides/li/a').map do |a|
          a.attributes['href'].value
        end
      end
    end
  end
end