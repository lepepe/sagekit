module Sagekit
  class InvoicesResource < Resource

    # Get all records:
    #   client.list('COMPANY')
    # Get records using a range:
    #   client.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.list('COMPANY', '$filter':"CustomerNumber eq '112321' and OrderType eq 'Active'")
    # Get records with subset of properties:
    #   client.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
      Invoice.new get_request("#{company}/OE/OEOrders", params: params).body
    end

    # Get record by key:
    #   client.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.retrieve('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(invoice_id, **params)
      Invoice.new get_request("#{company}/OE/OEOrders(#{order_id})", params: params).body
    end
  end
end
