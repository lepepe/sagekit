module Sagekit
  class OE::SalesHistoryResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/OE/OESalesHistory?$count=true", params: params), type: SalesHistory
    end

    def details(company, **params)
      Collection.from_response get_request("#{company}/OE/OESalesHistoryDetails?$count=true", params: params), type: SalesHistory
    end

    def stats(company, **params)
      Collection.from_response get_request("#{company}/OE/OESalesStatistics?$count=true", params: params), type: SalesHistory
    end
  end
end
