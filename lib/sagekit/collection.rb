module Sagekit
  class Collection
    attr_reader :data, :total, :per_page

    def self.from_response(response, type:)
      body = response.body
      new(
        data: body["value"].map{ |attrs| type.new(attrs) },
        total: body.dig("@odata.count"),
        per_page: body["value"].count
      )
    end

    def initialize(data:, total:, per_page:)
      @data = data
      @total = total
      @per_page = per_page
    end
  end
end
