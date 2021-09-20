module Sagekit
  class SalesPersonsResource < Resource

    def list(company, **params)
      SalesPerson.new get_request("#{company}/AR/ARSalespersons", params: params).body
    end

    def retreive(company, id, **params)
      SalesPerson.new get_request("#{company}/AR/ARSalespersons('#{id}')", params: params).body
    end

    def create(company, **attributes)
      SalesPerson.new post_request("#{company}/AR/ARSalespersons", body: attributes).body
    end

    def update(company, id, **attributes)
      patch_request("#{company}/AR/ARSalespersons('#{id}')", body: attributes)
      true
    end

    def delete(company, id)
      delete_request("#{company}/AR/ARSalespersons('#{id}')")
      true
    end

    def statistics(company, **params)
      SalesPerson.new get_request("#{company}/AR/ARSalespersonStatistics", params: params).body
    end

    def filter_stats(company, sales_person, year, period)
      SalesPerson.new get_request("#{company}/AR/ARSalespersonStatistics(Salesperson='#{sales_person}',Year='#{year}',Period='#{period}')").body
    end
  end
end
