module Sagekit
  class AP::InvoiceBatchesResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AP/APInvoiceBatches", params: params), type: InvoiceBatch
    end

    def retreive(company, batch_number, **params)
      InvoiceBatch.new get_request("#{company}/AP/APInvoiceBatches('#{batch_number}')", params: params).body
    end

    def create(company, **attributes)
      InvoiceBatch.new post_request("#{company}/AP/APInvoiceBatches", body: attributes).body
    end

    def update(company, batch_number, **attributes)
      patch_request("#{company}/AR/ARTerms('#{batch_number}')", body: attributes)
      true
    end

  end
end
