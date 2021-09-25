module Sagekit
  class CreditNotesResource < Resource

    def list(company, **params)
      CreditNote.new get_request("#{company}/OE/OECreditDebitNotes", params: params).body
    end

    def retreive(company, id, **params)
      CreditNote.new get_request("#{company}/OE/OECreditDebitNotes('#{id}')", params: params).body
    end

    def create(company, **attributes)
      CreditNote.new post_request("#{company}/OE/OECreditDebitNotes", body: attributes).body
    end

  end
end
