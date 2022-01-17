require 'razorpay/request'
require 'razorpay/entity'

module Razorpay
  # Card API allows you to fetch cards
  # saved with Razorpay
  # Docs: https://docs.razorpay.com/v1/page/cards
  class Settlement < Entity
    def self.request
        Razorpay::Request.new('settlements')
    end

    def self.fetch(id)
      request.fetch id
    end

    def self.all(options = {})
      request.all options
    end

    def self.recon(options = {})
      request.get 'recon/combined', options
    end 
  end
end
