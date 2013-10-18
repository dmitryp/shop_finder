module ShopFinder
  module Shops
    class Alba
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('div.Imgblock/div.items/img').map do |a|
          a.attributes['src'].value.gsub(/(\/\d+)(s)(\.\w+)$/, '\1b\3')
        end
      end
    end
  end
end