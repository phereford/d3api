module D3api
  class BaseModel
    include D3api::Request

    def initialize(values)
      JSON.parse(values)
    end

    private
    def set_method(values, static_array)
      static_array.each do |key, value|
        self.send("#{key}=", values[value])
      end
    end
  end
end
