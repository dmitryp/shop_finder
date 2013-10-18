require "shop_finder/version"

require 'mechanize'
require 'shop_finder/logger'
require 'shop_finder/agent'
require 'shop_finder/product_page_parser'
require 'shop_finder/shops/alba'

dir = "lib/shop_finder/shops"
$LOAD_PATH.unshift(dir)
Dir[File.join(dir, "*.rb")].each {|file| require File.basename(file) }


module ShopFinder
  SHOP_NAME = {
    515   => 'Quelle',
    1001  => 'Lamoda',
    1186  => 'Proskater',
    1326  => 'Topbrands',
    1477  => 'Shoptime',
    2034  => 'E5',
    3447  => 'Alba',
    3761  => 'Showrooms'
  }

  class << self
    attr_accessor :config, :logger, :photos_per_product

    # proxy config:
    # {'production' => {'proxy' => 'http://host', 'port' => 3128}}
    #
    # For rails app:
    # config/initializer/shop_finder.rb
    # ShopFinder.config = YAML.load(File.read(File.join(Rails.root, 'config', 'shopfinder.yml')))[Rails.env||'development']
    def config
      @config
    end

    # ShopFinder.logger = ShopFinder::Logger.new(File.join(Rails.root, "log", "shopfinder_#{Rails.env}.log"), ShopFinder::Logger::Severity::INFO )
    def logger
      @logger
    end

    # Max number photos per product
    def photos_per_product
      @photos_per_product ||= -1
    end
  end
end
