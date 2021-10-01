module Sagekit
  class ItemsResource < Resource

    def list(company, **params)
        Item.new get_request("#{company}/IC/ICItems", params: params).body
    end

    def retreive(company, item_id, **params)
        Item.new get_request("#{company}/IC/ICItems('#{item_id}')", params: params).body
    end

    def create(company, **attributes)
        Item.new post_request("#{company}/IC/ICItems", body: attributes).body
    end

    def update(company, item_id, **attributes)
      patch_request("#{company}/IC/ICItems('#{item_id}')", body: attributes)
      true
    end

    # Delete record
    def delete(company, item_id)
      delete_request("#{company}/IC/ICItems('#{item_id}')")
      true
    end
  end
end
