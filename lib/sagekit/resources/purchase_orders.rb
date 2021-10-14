module Sagekit
  class PurchaseOrdersResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/PO/POPurchaseOrders?$count=true", params: params), type: Item
    end

    def retreive(company, order_id, **params)
      PurchaseOrder.new get_request("#{company}/PO/POPurchaseOrders(#{order_id})", params: params).body
    end

    def create(company, **attributes)
      PurchaseOrder.new post_request("#{company}/PO/POPurchaseOrders", body: attributes).body
    end
  end
end
