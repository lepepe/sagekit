module Sagekit
  class VendorStatisticsResource < Resource

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
        VendorStatistic.new get_request("#{company}/AP/APVendorStatistics", params: params).body
    end
  end
end
