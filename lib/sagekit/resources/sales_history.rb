module Sagekit
  class SalesHistoryResource < Resource

    def list(company, **params)
      SalesHistory.new get_request("#{company}/OE/OESalesHistory", params: params).body
    end

    def details(company, **params)
      SalesHistory.new get_request("#{company}/OE/OESalesHistoryDetails", params: params).body
    end

    def stats(company, **params)
      SalesHistory.new get_request("#{company}/OE/OESalesStatistics", params: params).body
    end
  end
end
