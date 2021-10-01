module Sagekit
  class VendorsResource < Resource

    def list(company, **params)
        Vendor.new get_request("#{company}/AP/APVendors", params: params).body
    end

    def retreive(company, vendor_id, **params)
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
        Vendor.new get_request("#{company}/AP/APVendorStatistics", params: params).body
    end
  end
end
