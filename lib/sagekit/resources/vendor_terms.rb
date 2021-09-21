module Sagekit
  class VendorTermsResource < Resource

    def list(company, **params)
      Vendor.new get_request("#{company}/AP/APTerms", params: params).body
    end

    def retreive(company, terms_code, **params)
      Vendor.new get_request("#{company}/AP/APTerms('#{terms_code}')", params: params).body
    end

    def create(company, **attributes)
      Vendor.new post_request("#{company}/AP/APTerms", body: attributes).body
    end

    def update(company, terms_code, **attributes)
      patch_request("#{company}/AP/APTerms('#{terms_code}')", body: attributes)
      true
    end

    def delete(company, terms_code)
      delete_request("#{company}/AP/APTerms('#{terms_code}')")
      true
    end
  end
end
