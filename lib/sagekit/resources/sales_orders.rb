module Sagekit
  class SalesOrdersResource < Resource

    def list(company, **params)
      SalesOrder.new get_request("#{company}/OE/OEOrders", params: params).body
    end

    def retreive(company, order_id, **params)
      SalesOrder.new get_request("#{company}/OE/OEOrders(#{order_id})", params: params).body
    end

    def create(company, **attributes)
      SalesOrder.new post_request("#{company}/OE/OEOrders", body: attributes).body
    end

    def create_json(company, options={})
      SalesOrder.new post_request("#{company}/OE/OEOrders", body: options).body
    end
  end
end
