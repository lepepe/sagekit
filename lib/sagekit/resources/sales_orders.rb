module Sagekit
  class SalesOrdersResource < Resource

    # Get all records:
    #   client.sales_orders.list('COMPANY')
    # Get records using a range:
    #   client.sales_orders.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.sales_orders.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.sales_orders.list('COMPANY', '$filter':"CustomerNumber eq '112321' and OrderType eq 'Active'")
    # Get records with subset of properties:
    #   client.sales_orders.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
      SalesOrder.new get_request("#{company}/OE/OEOrders", params: params).body
    end

    # Get record by key:
    #   client.sales_orders.retreive('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.sales_orders.retreive('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, order_id, **params)
      SalesOrder.new get_request("#{company}/OE/OEOrders(#{order_id})", params: params).body
    end

    # Create new record:
    # body: json
    # client.sales_orders.create(
    #   "ACCLTD",
    #   {
    #    "CustomerNumber":"33016L",
    #        "OrderReference":"26",
    #        "OrderDescription":"Ship via: Delivery",
    #        "OrderComment":"Ordered form ERP: 26. Testing UOM!",
    #        "OrderDetails":
    #        [
    #            {
    #               "Item":"0-005-39-00100",
    #               "StockItem":true,
    #               "QuantityOrdered":55.12
    #            },
    #            {
    #               "Item":"0-005-19-00200",
    #               "StockItem":true,
    #               "QuantityOrdered":101.05
    #            }
    #        ]
    #    }
    #)
    def create(company, options = {})
      SalesOrder.new post_request("#{company}/OE/OEOrders", body: options).body
    end
  end
end
