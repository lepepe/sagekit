module Sagekit
  class AccountSetsResource < Resource

    def list(company, **params)
      AccountSet.new get_request("#{company}/AR/ARAccountSets", params: params).body
    end

    def retreive(company, id, **params)
      AccountSet.new get_request("#{company}/AR/ARAccountSets('#{id}')", params: params).body
    end

    def create(company, **attributes)
      AccountSet.new post_request("#{company}/AR/ARAccountSets", body: attributes).body
    end

    def update(company, id, **attributes)
      patch_request("#{company}/AR/ARAccountSets('#{id}')", body: attributes)
      true
    end

    def delete(company, id)
      delete_request("#{company}/AR/ARAccountSets('#{id}')")
      true
    end

  end
end
