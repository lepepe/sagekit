module Sagekit
  class VendorGroupsResource < Resource

    # Get all records:
    #   client.vendor_groups.list('COMPANY')
    # Get records using a range:
    #   client.vendor_groups.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.vendor_groups.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.vendor_groups.list('COMPANY', '$filter':"VendorNumber eq '112321' and OrderType eq 'Active'")
    # Get records with subset of properties:
    #   client.vedor_groups.list('COMPANY', '$select':'OrderNumber, VendorNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
        Vendor.new get_request("#{company}/AP/APVendorGroups", params: params).body
    end

    # Get record by key:
    #   client.vendor_groups.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.vendor_groups.retrieve('COMPANY', '$select':'VendorNumber, VendorName')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, id, **params)
        Vendor.new get_request("#{company}/AP/APVendorGroups('#{id}')", params: params).body
    end

    # Create new record:
    # body: ruby hash
    # client.vendor_groups.create(VendorName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def create(company, **attributes)
        Vendor.new post_request("#{company}/AP/APVendorGroups", body: attributes).body
    end

    # Create new record:
    # body: ruby hash
    # client.vendor_groups.create(VendorName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def update(company, id, **attributes)
      patch_request("#{company}/AP/APVendorGroups('#{id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, id)
      delete_request("#{company}/AP/APVendorGroups('#{id}')")
      true
    end
  end
end
