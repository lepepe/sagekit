module Sagekit
  class AR::CustomerTermsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/AR/ARTerms?$count=true", params: params), type: CustomerTerm
    end

    def retrieve(company, terms_code, **params)
      CustomerTerm.new get_request("#{company}/AR/ARTerms('#{terms_code}')", params: params).body
    end

    def create(company, **attributes)
      CustomerTerm.new post_request("#{company}/AR/ARTerms", body: attributes).body
    end

    def update(company, terms_code, **attributes)
      patch_request("#{company}/AR/ARTerms('#{terms_code}')", body: attributes)
      true
    end

    def delete(company, terms_code)
      delete_request("#{company}/AR/ARTerms('#{terms_code}')")
      true
    end
  end
end
