module D3api
  class Follower < BaseModel
    FOLLOWER_MAPPINGS = {
      :slug => 'slug',
      :name => 'name',
      :portrait => 'portrait',
      :active_skills => nil
    }

    attr_accessor :slug, :name, :portrait, :active_skills

    def initialize(region, follower_type)
      json_response = find(region, follower_type)

      values = super json_response

      set_method(values, FOLLOWER_MAPPINGS)
    end

    private
    def find(region, follower_type)
      get(region, "data/follower/#{follower_type}")
    end
  end
end
