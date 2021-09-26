module Sagekit
  class CustomerGroupsResource < Resource

    # Get all records:
    #   client.customer_groups.list('COMPANY')
    # Get records using a range:
    #   client.customer_groups.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.customer_groups.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.customer_groups.list('COMPANY', '$filter':"CustomerNumber eq '112321' and OrderType eq 'Active'")
    # Get records with subset of properties:
    #   client.customer_groups.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
      Customer.new get_request("#{company}/AR/ARCustomerGroups", params: params).body
    end

    # Get record by key:
    #   client.customer_groups.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.customer_groups.retrieve('COMPANY', '$select':'CustomerNumber, CustomerName')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, id, **params)
      Customer.new get_request("#{company}/AR/ARCustomerGroups('#{id}')", params: params).body
    end

    # Create new record:
    # body: ruby hash
    # client.customer_groups.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def create(company, **attributes)
      Customer.new post_request("#{company}/AR/ARCustomerGroups", body: attributes).body
    end

    # Create new record:
    # body: ruby hash
    # client.customer_groups.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def update(company, id, **attributes)
      patch_request("#{company}/AR/ARCustomerGroups('#{id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, id)
      delete_request("#{company}/AR/ARCustomerGroups('#{id}')")
      true
    end
  end
end