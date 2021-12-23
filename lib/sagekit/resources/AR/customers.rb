module Sagekit
  class AR::CustomersResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AR/ARCustomers?$count=true", params: params), type: Customer
    end

    def retreive(company, customer_id, **params)
      Customer.new get_request("#{company}/AR/ARCustomers('#{customer_id}')", params: params).body
    end

    def create(company, **attributes)
      Customer.new post_request("#{company}/AR/ARCustomers", body: attributes).body
    end

    def update(company, customer_id, **attributes)
      patch_request("#{company}/AR/ARCustomers('#{customer_id}')", body: attributes)
      true
    end

    def delete(company, customer_id)
      delete_request("#{company}/AR/ARCustomers('#{customer_id}')")
      true
    end
  end
end
