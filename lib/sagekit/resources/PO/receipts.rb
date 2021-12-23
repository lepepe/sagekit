module Sagekit
  class PO::ReceiptsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/PO/POReceipts?$count=true", params: params), type: Receipt
    end

    def retreive(company, receipt_id, **params)
      Receipt.new get_request("#{company}/PO/POReceipts(#{receipt_id})", params: params).body
    end

    def create(company, **attributes)
      Receipt.new post_request("#{company}/PO/POReceipts", body: attributes).body
    end
  end
end
