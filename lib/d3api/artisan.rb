module D3api
  class Artisan < BaseModel
    attr_accessor :slug, :name, :portrait, :training

    ARTISAN_MAPPING = {
      :slug => 'slug',
      :name => 'name',
      :portrait => 'portrait',
      :training => nil
    }
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
