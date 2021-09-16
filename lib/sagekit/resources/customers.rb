module Sagekit
  class CustomersResource < Resource

    # Get all records:
    #   client.customers.list('COMPANY')
    # Get records using a range:
    #   client.customers.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.customers.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.customers.list('COMPANY', '$filter':"CustomerNumber eq '112321' and OrderType eq 'Active'")
    # Get records with subset of properties:
    #   client.customers.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
      Customer.new get_request("#{company}/AR/ARCustomers", params: params).body
    end

    # Get record by key:
    #   client.customers.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.customers.retrieve('COMPANY', '$select':'CustomerNumber, CustomerName')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, customer_id, **params)
      Customer.new get_request("#{company}/AR/ARCustomers('#{customer_id}')", params: params).body
    end

    # Create new record:
    # body: ruby hash
    # client.customers.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def create(company, **attributes)
      Customer.new post_request("#{company}/AR/ARCustomers", body: attributes).body
    end

    # Create new record:
    # body: ruby hash
    # client.customers.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def update(company, customer_id, **attributes)
      patch_request("#{company}/AR/ARCustomers('#{customer_id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, customer_id)
      delete_request("#{company}/AR/ARCustomers('#{customer_id}'")
      true
    end
  end
end
