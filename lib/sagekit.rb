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
  module OE
    autoload :SalesOrdersResource, "sagekit/resources/OE/sales_orders"
    autoload :InvoicesResource, "sagekit/resources/OR/OEnvoices"
    autoload :SalesHistoryResource, "sagekit/resources/OE/sales_history"
    autoload :CreditNotesResource, "sagekit/resources/OE/credit_notes"
  end

  # PO Module
  module PO
    autoload :PurchaseOrdersResource, "sagekit/resources/PO/purchase_orders"
    autoload :ReceiptsResource, "sagekit/resources/PO/receipts"
    autoload :VendorContractCostsResource, "sagekit/resources/PO/vendor_contract_costs"
  end

  # AR Module
  module AR
    autoload :CustomersResource, "sagekit/resources/AR/customers"
    autoload :CustomerGroupsResource, "sagekit/resources/AR/customer_groups"
    autoload :CustomerTermsResource, "sagekit/resources/AR/customer_terms"
    autoload :SalesPersonsResource, "sagekit/resources/AR/sales_persons"
    autoload :AccountSetsResource, "sagekit/resources/AR/account_sets"
  end

  # AP Module
  module AP
    autoload :InvoiceBatchesResource, "sagekit/resources/AP/invoice_batches"
    autoload :VendorsResource, "sagekit/resources/AP/vendors"
    autoload :VendorGroupsResource, "sagekit/resources/AP/vendor_groups"
    autoload :VendorTermsResource, "sagekit/resources/AP/vendor_terms"
  end

  # IC Module
  module IC
    autoload :ItemsResource, "sagekit/resources/IC/items"
    autoload :CategoriesResource, "sagekit/resources/IC/categories"
    autoload :LocationsResource, "sagekit/resources/IC/locations"
  end

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
  autoload :InvoiceBatch, "sagekit/objects/invoice_batch.rb"
  # IC Module
  autoload :Item, "sagekit/objects/item.rb"
  autoload :Category, "sagekit/objects/category.rb"
  autoload :Location, "sagekit/objects/location.rb"
end
