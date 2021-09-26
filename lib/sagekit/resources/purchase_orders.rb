module Sagekit
  class PurchaseOrdersResource < Resource

    def list(company, **params)
      PurchaseOrder.new get_request("#{company}/PO/POPurchaseOrders", params: params).body
    end

    def retreive(company, order_id, **params)
      PurchaseOrder.new get_request("#{company}/PO/POPurchaseOrders(#{order_id})", params: params).body
    end

    def create(company, **attributes)
      PurchaseOrder.new post_request("#{company}/PO/POPurchaseOrders", body: attributes).body
    end
  end
end
