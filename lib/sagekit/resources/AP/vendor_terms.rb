module Sagekit
  class AP::VendorTermsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AP/APTerms?$count=true", params: params), type: VendorTerm
    end

    def retrieve(company, terms_code, **params)
      VendorTerm.new get_request("#{company}/AP/APTerms('#{terms_code}')", params: params).body
    end

    def create(company, **attributes)
      VendorTerm.new post_request("#{company}/AP/APTerms", body: attributes).body
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
