module Sagekit
  class AP::VendorContractCostsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/PO/POVendorContractCosts?$count=true", params: params), type: VendorContractCost
    end

    def retrieve(company, item, vendor, **params)
      VendorContractCost.new get_request("#{company}/PO/POVendorContractCosts(ItemNumer='#{item}',VendorNumber='#{vendor}')", params: params).body
    end

    def create(company, **attributes)
      VendorContractCost.new post_request("#{company}/PO/POVendorContractCosts", body: attributes).body
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
