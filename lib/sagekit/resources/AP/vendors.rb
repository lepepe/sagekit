module Sagekit
  class AP::VendorsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AP/APVendors?$count=true", params: params), type: Vendor
    end

    def retrieve(company, vendor_id, **params)
      Vendor.new get_request("#{company}/AP/APVendors('#{vendor_id}')", params: params).body
    end

    def create(company, **attributes)
      Vendor.new post_request("#{company}/AP/APVendors", body: attributes).body
    end

    def update(company, vendor_id, **attributes)
      patch_request("#{company}/AP/APVendors('#{vendor_id}')", body: attributes)
      true
    end

    def delete(company, vendor_id)
      delete_request("#{company}/AP/APVendors('#{vendor_id}')")
      true
    end

    def statistics(company, **params)
      Collection.from_response get_request("#{company}/AP/APVendorStatistics?$count=true", params: params), type: Vendor
    end
  end
end
