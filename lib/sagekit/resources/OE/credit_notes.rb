module Sagekit
  class OE::CreditNotesResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/OE/OECreditDebitNotes?$count=true", params: params), type: CreditNote
    end

    def retreive(company, id, **params)
      CreditNote.new get_request("#{company}/OE/OECreditDebitNotes('#{id}')", params: params).body
    end

    def create(company, **attributes)
      CreditNote.new post_request("#{company}/OE/OECreditDebitNotes", body: attributes).body
    end

  end
end
