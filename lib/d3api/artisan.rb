module D3api
  class Artisan < BaseModel
    attr_accessor :slug, :name, :portrait, :training

    def initialize(region=:us, artisan_type)
      json_response = find(region, artisan_type)

      values = super json_response

      set_method(values)
    end

    private
    def find(region, artisan_type)
      get(region, "data/artisan/#{artisan_type}")
    end

    def set_method(values)
      self.slug = values['slug']
      self.name = values['name']
      self.portrait = values['portrait']
      self.training = nil
    end
  end
end
