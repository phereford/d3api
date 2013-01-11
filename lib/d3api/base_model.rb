module D3api
  class BaseModel
    include D3api::Request

    def initialize(values)
      JSON.parse(values)
    end
  end
end
