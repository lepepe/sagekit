module Sagekit
  class InvoicesResource < Resource

    def list(company, **params)
      Invoice.new get_request("#{company}/OE/OEOrders", params: params).body
    end

    def retreive(invoice_id, **params)
      Invoice.new get_request("#{company}/OE/OEOrders(#{order_id})", params: params).body
    end
  end
end
