module Sagekit
  class InvoicesResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/OE/OEInvoices?$count=true", params: params), type: Invoice
    end

    def retreive(invoice_id, **params)
      Invoice.new get_request("#{company}/OE/OEInvoices(#{invoice_id})", params: params).body
    end
  end
end
