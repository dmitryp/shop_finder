module ShopFinder
  module Shops
    class Butik
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        page.search('div#perviewList/div.miniatures/div.mini_photo/a/img').map do |a|
          a.attributes['data-big'].value
        end
      end
    end
  end
end