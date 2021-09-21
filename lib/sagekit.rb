# frozen_string_literal: true

require_relative "sagekit/version"

module Sagekit
  autoload :Client, "sagekit/client"
  autoload :Error, "sagekit/error"
  autoload :Object, "sagekit/object"
  autoload :Resource, "sagekit/resource"

  # Resources | Categories of Sage300 API calls
  # OE Module
  autoload :SalesOrdersResource, "sagekit/resources/sales_orders"
  autoload :InvoicesResource, "sagekit/resources/invoices"
  autoload :SalesHistoryResource, "sagekit/resources/sales_history"
  # AR Module
  autoload :CustomersResource, "sagekit/resources/customers"
  autoload :CustomerGroupsResource, "sagekit/resources/customer_groups"
  autoload :CustomerTermsResource, "sagekit/resources/customer_terms"
  autoload :SalesPersonsResource, "sagekit/resources/sales_persons"
  # AP Module
  autoload :VendorsResource, "sagekit/resources/vendors"
  autoload :VendorGroupsResource, "sagekit/resources/vendor_groups"
  autoload :VendorTermsResource, "sagekit/resources/vendor_terms"
  # IC Module
  autoload :ItemsResource, "sagekit/resources/items"
  autoload :CategoriesResource, "sagekit/resources/categories"
  autoload :LocationsResource, "sagekit/resources/locations"

  # Objects
  autoload :SalesHistory, "sagekit/objects/sales_history.rb"
  autoload :SalesOrder, "sagekit/objects/sales_order.rb"
  autoload :Invoice, "sagekit/objects/invoices.rb"
  autoload :Customer, "sagekit/objects/customer.rb"
  autoload :SalesPerson, "sagekit/objects/sales_person.rb"
  autoload :Vendor, "sagekit/objects/vendor.rb"
  autoload :Item, "sagekit/objects/item.rb"
  autoload :Category, "sagekit/objects/category.rb"
  autoload :Location, "sagekit/objects/location.rb"
end
