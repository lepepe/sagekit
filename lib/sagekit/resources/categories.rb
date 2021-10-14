module Sagekit
  class CategoriesResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/IC/ICCategories?$count=true", params: params), type: Category
    end

    def retreive(company, cat_id, **params)
      Category.new get_request("#{company}/IC/ICCategories('#{cat_id}')", params: params).body
    end

    def create(company, **attributes)
      Category.new post_request("#{company}/IC/ICCategories", body: attributes).body
    end

    def update(company, cat_id, **attributes)
      patch_request("#{company}/IC/ICCategories('#{cat_id}')", body: attributes)
      true
    end

    def delete(company, item_id)
      delete_request("#{company}/IC/ICCategories('#{item_id}')")
      true
    end
  end
end
