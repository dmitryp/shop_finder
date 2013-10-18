module ShopFinder
  module Shops
    class Quelle
      def self.parse_attributes(page)
        raise 'Not implemented'
      end

      def self.parse_images(page)
        uri = page.uri.dup
        page.search('div.horizontalImageListBox/ul/li/a').map do |a|
          path = a.attributes['href'].value.split(/\?/)[0]
          #uri.path = path.gsub('_w303_h431_t1','_w485_h689_t1')
          uri.path = path
          uri.to_s
        end
      end
    end
  end
end