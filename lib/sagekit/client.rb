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

    # AP Accounts Payable
    def invoice_batches
      AP::InvoiceBatchesResource.new(self)
    end

    def vendors
      AP::VendorsResource.new(self)
    end

    def vendor_groups
      AP::VendorGroupsResource.new(self)
    end

    def vendor_terms
      AP::VendorTermsResource.new(self)
    end

    # AR Accounts Receivable
    def customers
      AR::CustomersResource.new(self)
    end

    def customer_groups
      AR::CustomerGroupsResource.new(self)
    end

    def customer_terms
      AR::CustomerTermsResource.new(self)
    end

    def account_sets
      AR::AccountSetsResource.new(self)
    end

    def sales_persons
      AR::SalesPersonsResource.new(self)
    end

    # OE Order Entry
    def credit_notes
      CreditNotesResource.new(self)
    end

    def sales_orders
      OE::SalesOrdersResource.new(self)
    end

    def invoices
      OE::InvoicesResource.new(self)
    end

    def sales_history
      OE::SalesHistoryResource.new(self)
    end

    # PO Purchase Orders
    def purchase_orders
      PO::PurchaseOrdersResource.new(self)
    end

    def receipts
      PO::ReceiptsResource.new(self)
    end

    def vendor_contract_cost
      PO::VendorContractCostsResource.new(self)
    end

    # IC Inventory Control
    def items
      IC::ItemsResource.new(self)
    end

    def categories
      IC::CategoriesResource.new(self)
    end

    def locations
      IC::LocationsResource.new(self)
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
