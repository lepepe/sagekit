module Sagekit
  class LocationsResource < Resource

    def list(company, **params)
        Location.new get_request("#{company}/IC/ICLocations", params: params).body
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
