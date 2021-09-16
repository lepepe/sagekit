module Sagekit
  class LocationsResource < Resource

    # Get all records:
    #   client.locations.list('COMPANY')
    # Get records using a range:
    #   client.locations.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.locations.list('COMPANY', '$filter':"City eq 'Miami'")
    # Get records using complex filter:
    #   client.locations.list('COMPANY', '$filter':"Name eq '112321' and Status eq 'Active'")
    # Get records with subset of properties:
    #   client.locations.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
        Location.new get_request("#{company}/IC/ICLocations", params: params).body
    end

    # Get record by key:
    #   client.locations.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.locations.retrieve('COMPANY', '$select':'CustomerNumber, CustomerName')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, location_id, **params)
        Location.new get_request("#{company}/IC/ICLocations('#{locations_id}')", params: params).body
    end

    # Create new record:
    # body: ruby hash
    # client.locations.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def create(company, **attributes)
        Location.new post_request("#{company}/IC/ICLocations", body: attributes).body
    end

    # Create new record:
    # body: ruby hash
    # client.locations.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def update(company, location_id, **attributes)
      patch_request("#{company}/IC/ICLocations('#{location_id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, location_id)
      delete_request("#{company}/IC/ICLocations('#{location_id}')")
      true
    end
  end
end
