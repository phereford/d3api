module D3api
  class Follower < BaseModel
    attr_accessor :slug, :name, :portrait, :skills

    def initialize(region, follower_type)
      json_response = find(region, follower_type)

      values = super json_response

      set_method(values)
    end

    private
    def find(region, follower_type)
      get(region, "data/follower/#{follower_type}")
    end

    def set_method(values)
      self.slug = values['slug']
      self.name = values['name']
      self.portrait = values['portrait']
      self.skills = nil
    end
  end
end
