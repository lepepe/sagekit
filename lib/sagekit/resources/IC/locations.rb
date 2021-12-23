module Sagekit
  class IC::LocationsResource < Resource

    def list(company, **params)
      Collection.from_response get_request("#{company}/IC/ICLocations?$count=true", params: params), type: Item
    end

    def retreive(company, location_id, **params)
      Location.new get_request("#{company}/IC/ICLocations('#{locations_id}')", params: params).body
    end

    def create(company, **attributes)
      Location.new post_request("#{company}/IC/ICLocations", body: attributes).body
    end

    def update(company, location_id, **attributes)
      patch_request("#{company}/IC/ICLocations('#{location_id}')", body: attributes)
      true
    end

    def delete(company, location_id)
      delete_request("#{company}/IC/ICLocations('#{location_id}')")
      true
    end
  end
end
