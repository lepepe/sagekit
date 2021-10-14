# frozen_string_literal: true

require_relative "sagekit/version"

module Sagekit
  autoload :Client, "sagekit/client"
  autoload :Collection, "sagekit/collection"
  autoload :Error, "sagekit/error"
  autoload :Object, "sagekit/object"
  autoload :Resource, "sagekit/resource"

  # Resources | Categories of Sage300 API calls
  # OE Module
  autoload :SalesOrdersResource, "sagekit/resources/sales_orders"
  autoload :InvoicesResource, "sagekit/resources/invoices"
  autoload :SalesHistoryResource, "sagekit/resources/sales_history"
  autoload :CreditNotesResource, "sagekit/resources/credit_notes"
  # PO Module
  autoload :PurchaseOrdersResource, "sagekit/resources/purchase_orders"
  autoload :ReceiptsResource, "sagekit/resources/receipts"
  autoload :VendorContractCostsResource, "sagekit/resources/vendor_contract_costs"
  # AR Module
  autoload :CustomersResource, "sagekit/resources/customers"
  autoload :CustomerGroupsResource, "sagekit/resources/customer_groups"
  autoload :CustomerTermsResource, "sagekit/resources/customer_terms"
  autoload :SalesPersonsResource, "sagekit/resources/sales_persons"
  autoload :AccountSetsResource, "sagekit/resources/account_sets"
  # AP Module
  autoload :VendorsResource, "sagekit/resources/vendors"
  autoload :VendorGroupsResource, "sagekit/resources/vendor_groups"
  autoload :VendorTermsResource, "sagekit/resources/vendor_terms"
  # IC Module
  autoload :ItemsResource, "sagekit/resources/items"
  autoload :CategoriesResource, "sagekit/resources/categories"
  autoload :LocationsResource, "sagekit/resources/locations"

  # Objects
  # OE Module
  autoload :SalesHistory, "sagekit/objects/sales_history.rb"
  autoload :SalesOrder, "sagekit/objects/sales_order.rb"
  autoload :Invoice, "sagekit/objects/invoice.rb"
  autoload :CreditNote, "sagekit/objects/credit_note.rb"
  # PO Module
  autoload :PurchaseOrder, "sagekit/objects/purchase_order.rb"
  autoload :Receipt, "sagekit/objects/receipt.rb"
  autoload :VendorContractCost, "sagekit/objects/vendor_contract_cost.rb"
  # AR Module
  autoload :Customer, "sagekit/objects/customer.rb"
  autoload :SalesPerson, "sagekit/objects/sales_person.rb"
  autoload :AccountSet, "sagekit/objects/account_set.rb"
  # AP Module
  autoload :Vendor, "sagekit/objects/vendor.rb"
  # IC Module
  autoload :Item, "sagekit/objects/item.rb"
  autoload :Category, "sagekit/objects/category.rb"
  autoload :Location, "sagekit/objects/location.rb"
end
