module D3api
  class HeroFollowerSet
    attr_accessor :follower_set

    def initialize(follower_array)
      followers = []

      follower_array.each do |follower|
        followers << D3api::HeroFollower.new(follower[0], follower[1])
      end

      set_method(followers)
    end

    private
    def set_method(followers)
      self.follower_set ||= followers
    end
  end
end
