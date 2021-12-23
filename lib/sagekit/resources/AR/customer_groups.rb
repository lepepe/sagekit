module Sagekit
  class AR::CustomerGroupsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AR/ARCustomerGroups?$count=true", params: params), type: Customer
    end

    def retreive(company, id, **params)
      Customer.new get_request("#{company}/AR/ARCustomerGroups('#{id}')", params: params).body
    end

    def create(company, **attributes)
      Customer.new post_request("#{company}/AR/ARCustomerGroups", body: attributes).body
    end

    def update(company, id, **attributes)
      patch_request("#{company}/AR/ARCustomerGroups('#{id}')", body: attributes)
      true
    end

    def delete(company, id)
      delete_request("#{company}/AR/ARCustomerGroups('#{id}')")
      true
    end
  end
end
