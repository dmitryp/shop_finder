module ShopFinder
  class ProductPageParser
    def initialize(target_url, shop_original_id)
      @target_url = target_url
      shop_name = SHOP_NAME[shop_original_id]
      @klass = constantize("ShopFinder::Shops::#{shop_name}")
      @agent = ShopFinder::Agent.new.agent
    end

    def product_page
      @page ||=  @agent.get(@target_url)
    end

    def attributes
      @klass.parse_attributes(product_page)
    end

    def images
      @klass.parse_images(product_page)
    end


  def constantize(camel_cased_word)
     names = camel_cased_word.split('::')
     names.shift if names.empty? || names.first.empty?

     constant = Object
     names.each do |name|
       constant = constant.const_defined?(name) ? constant.const_get(name) : constant.const_missing(name)
     end
     constant
   end

  end
end