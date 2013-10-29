module ShopFinder
  module Shops
    class KupiVip
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        page.search('div.b-product_thumb/a').map do |a|
          a.attributes['href'].value
        end
      end
    end
  end
end