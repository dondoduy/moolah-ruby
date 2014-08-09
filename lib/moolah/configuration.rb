require 'moolah/version'

module Moolah
  module Configuration
    DEFAULT_ENDPOINT = "https://api.moolah.io/v2"
    DEFAULT_API_KEY = nil
    DEFAULT_API_SECRET = nil
    DEFAULT_IPN = nil

    attr_accessor :api_key, :api_secret, :ipn, :endpoint

    # When extended, call reset to set variable values to defaults
    def self.extended(mod)
      mod.reset
    end

    def reset
      self.api_key = DEFAULT_API_KEY
      self.api_secret = DEFAULT_API_SECRET
      self.ipn = DEFAULT_IPN
      self.endpoint = DEFAULT_ENDPOINT
    end

    def configure
      yield self
    end

  end
end
