module Sagekit
  class VendorGroupsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AP/APVendorGroups?$count=true", params: params), type: Vendor
    end

    def retreive(company, id, **params)
      Vendor.new get_request("#{company}/AP/APVendorGroups('#{id}')", params: params).body
    end

    def create(company, **attributes)
      Vendor.new post_request("#{company}/AP/APVendorGroups", body: attributes).body
    end

    def update(company, id, **attributes)
      patch_request("#{company}/AP/APVendorGroups('#{id}')", body: attributes)
      true
    end

    def delete(company, id)
      delete_request("#{company}/AP/APVendorGroups('#{id}')")
      true
    end
  end
end
