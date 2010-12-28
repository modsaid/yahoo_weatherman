# coding: utf-8
path = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)

require 'rubygems'

require 'yaml'
require 'open-uri'
require 'nokogiri'

require 'yahoo_weatherman/i18n'
require 'yahoo_weatherman/image'
require 'yahoo_weatherman/response'

module Weatherman
  
  VERSION = '1.0.3'

  URI = 'http://weather.yahooapis.com/forecastrss'

  # = Client
  #
  # The weatherman client. Where it all begins.
  #
  class Client
    attr_reader :options

    #
    # Accepts a optional hash containing the client options.
    #
    # Options:
    #
    #  +unit+: the unit used for the temperature (defaults to Celsius).
    #  "f" => Fahrenheight
    #  "c" => Celsius
    #
    #  +lang+: the language used in the response
    #
    def initialize(options = {})
      @options = options
      @uri = options[:url] || URI
    end
    
    #
    # Just pass in a +woeid+ and it will return a Weatherman::Response object:w
    #
    def lookup_by_city_code(city_code)
      raw = get request_url(city_code)
      Response.new(raw, options[:lang])
    end

    private
      def request_url(city_code)
        @uri + query_string(city_code)
      end

      def query_string(city_code)
        "?p=#{city_code}&u=#{degrees_units}"
      end

      def degrees_units
        (options[:unit] || 'c').downcase
      end

      def get(url)
        open(url) { |stream| stream.read } 
      end
  end
end
