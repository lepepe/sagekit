module Sagekit
  class ItemsResource < Resource

    # Get all records:
    #   client.items.list('COMPANY')
    # Get records using a range:
    #   client.items.list('COMPANY', '$skip':5, '$top':2)
    # Get records using filter:
    #   client.items.list('COMPANY', '$filter':"CommodityCode eq '56.09.004'")
    # Get records using complex filter:
    #   client.items.list('COMPANY', '$filter':"ItemNumber eq '112321' and Status eq 'Active'")
    # Get records with subset of properties:
    #   client.items.list('COMPANY', '$select':'OrderNumber, CustomerNumber')
    #
    # Query Parameters:
    # $filter -> String
    # $select -> Array
    # $top -> Integer
    # $skip - >Integer
    # $count -> boolean
    def list(company, **params)
        Item.new get_request("#{company}/IC/ICItems", params: params).body
    end

    # Get record by key:
    #   client.items.retrieve('COMPANY', 10021638)
    # Get records with subset of properties:
    #   client.items.retrieve('COMPANY', '$select':'CustomerNumber, CustomerName')
    #
    # Query Parameters:
    # $select -> Array
    def retreive(company, item_id, **params)
        Item.new get_request("#{company}/IC/ICItems('#{item_id}')", params: params).body
    end

    # Create new record:
    # body: ruby hash
    # client.items.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def create(company, **attributes)
        Item.new post_request("#{company}/IC/ICItems", body: attributes).body
    end

    # Create new record:
    # body: ruby hash
    # client.items.create(CustomerName: 'NAME', GroupCode: 'US', TaxGroup: 'FL', ShortName: 'SHORTNAME')
    def update(company, item_id, **attributes)
      patch_request("#{company}/IC/ICItems('#{item_id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, item_id)
      delete_request("#{company}/IC/ICItems('#{item_id}')")
      true
    end
  end
end
