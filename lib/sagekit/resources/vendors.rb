module Sagekit
  class VendorsResource < Resource

    # Get all records:
    #   client.vendors.list('COMPANY')
    # Get records using a range:
    #   client.vendors.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.vendors.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.vendors.list('COMPANY', '$filter':"CustomerNumber eq '112321' and OrderType eq 'Active'")
    # Get records with subset of properties:
    #   client.vendors.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
        Vendor.new get_request("#{company}/AP/APVendors", params: params).body
    end

    # Get record by key:
    #   client.vendors.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.vendors.retrieve('COMPANY', '$select':'CustomerNumber, CustomerName')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, vendor_id, **params)
        Vendor.new get_request("#{company}/AP/APVendors('#{vendor_id}')", params: params).body
    end

    # Create new record:
    # body: ruby hash
    # client.vendors.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def create(company, **attributes)
        Vendor.new post_request("#{company}/AP/APVendors", body: attributes).body
    end

    # Create new record:
    # body: ruby hash
    # client.vendors.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def update(company, vendor_id, **attributes)
      patch_request("#{company}/AP/APVendors('#{vendor_id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, vendor_id)
      delete_request("#{company}/AP/APVendors('#{vendor_id}'")
      true
    end
  end
end
