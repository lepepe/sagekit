module Sagekit
  class VendorContractCostsResource < Resource

    def list(company, **params)
      VendorContractCost.new get_request("#{company}/PO/POVendorContractCosts", params: params).body
    end

    def retreive(company, item, vendor, **params)
      VendorContractCost.new get_request("#{company}/PO/POVendorContractCosts(ItemNumer='#{item}',VendorNumber='#{vendor}')", params: params).body
    end

    def create(company, **attributes)
      VeVendorContractCost.new post_request("#{company}/PO/POVendorContractCosts", body: attributes).body
    end

    def update(company, item, vendor, **attributes)
      patch_request("#{company}/PO/POVendorContractCosts(ItemNumer='#{item}',VendorNumber='#{vendor}')", body: attributes)
      true
    end

    def delete(company, item, vendor)
      delete_request("#{company}/PO/POVendorContractCosts(ItemNumer='#{item}',VendorNumber='#{vendor}')")
      true
    end

  end
end
