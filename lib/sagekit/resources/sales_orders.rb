module Sagekit
  class SalesOrdersResource < Resource

    def list(company, **params)
      SalesOrder.new get_request("#{company}/OE/OEOrders", params: params).body
    end

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
    def create(company, **attributes)
      SalesOrder.new post_request("#{company}/OE/OEOrders", body: attributes).body
    end
  end
end
