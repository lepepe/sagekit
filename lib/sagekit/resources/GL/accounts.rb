module Sagekit
  class GL::AccountsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/GL/GLAccounts?$count=true", params: params), type: Ledger
    end

    def retrieve(company, account_id, **params)
      Ledger.new get_request("#{company}/GL/GLAccounts('#{account_id}')", params: params).body
    end

    def create(company, **attributes)
      Ledger.new post_request("#{company}/GL/GLAccounts", body: attributes).body
    end

    def update(company, account_id, **attributes)
      patch_request("#{company}/GL/GLAccounts('#{account_id}')", body: attributes)
      true
    end

    def delete(company, account_id)
      delete_request("#{company}/GL/GLAccounts('#{account_id}')")
      true
    end
  end
end
