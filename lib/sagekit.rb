# frozen_string_literal: true

require_relative "sagekit/version"

module Sagekit
  autoload :Client, "sagekit/client"
  autoload :Error, "sagekit/error"
  autoload :Object, "sagekit/object"
  autoload :Resource, "sagekit/resource"

  # Resources | Categories of Sage300 API calls
  autoload :SalesOrdersResource, "sagekit/resources/sales_orders"
  autoload :InvoicesResource, "sagekit/resources/invoices"
  autoload :CustomersResource, "sagekit/resources/customers"
  autoload :VendorsResource, "sagekit/resources/vendors"
  autoload :VendorStatisticsResource, "sagekit/resources/vendor_statistics"
  autoload :IcItemsResource, "sagekit/resources/ic_items"
  autoload :LocationsResource, "sagekit/resources/locations"

  # Objects
  autoload :SalesOrder, "sagekit/objects/sales_order.rb"
  autoload :Invoice, "sagekit/objects/invoices.rb"
  autoload :Customer, "sagekit/objects/customer.rb"
  autoload :Vendor, "sagekit/objects/vendor.rb"
  autoload :VendorStatistic, "sagekit/objects/vendor_statistic.rb"
  autoload :IcItem, "sagekit/objects/ic_item.rb"
  autoload :Location, "sagekit/objects/location.rb"
end
