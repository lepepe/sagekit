require "faraday"
require "faraday_middleware"

module Sagekit
  class Client
    DEFAULT_TIMEOUT = 120

    attr_reader :auth, :base_url, :adapter

    def initialize(auth:, base_url:, adapter: Faraday.default_adapter)
      @auth = auth
      @base_url = base_url
      @adapter = adapter
    end

    def sales_orders
      SalesOrdersResource.new(self)
    end

    def invoices
      InvoicesResource.new(self)
    end

    def customers
      CustomersResource.new(self)
    end

    def customer_groups
      CustomerGroupsResource.new(self)
    end

    def sales_persons
      SalesPersonsResource.new(self)
    end

    def vendors
      VendorsResource.new(self)
    end

    def vendor_groups
      VendorGroupsResource.new(self)
    end

    def items
      ItemsResource.new(self)
    end

    def locations
      LocationsResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |con|
        con.url_prefix = base_url
        con.request :json
        con.response :json, content_type: "application/json"
        con.adapter adapter
      end
    end
  end
end
