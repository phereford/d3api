module D3api
  class Artisan < BaseModel
    ARTISAN_MAPPING = {
      :slug => 'slug',
      :name => 'name',
      :portrait => 'portrait',
      :training => nil
    }

    attr_accessor :slug, :name, :portrait, :training

    def initialize(region=:us, artisan_type)
      json_response = find(region, artisan_type)

      values = super json_response

      set_method(values, ARTISAN_MAPPING)
    end

    private
    def find(region, artisan_type)
      get(region, "data/artisan/#{artisan_type}")
    end
  end
end
