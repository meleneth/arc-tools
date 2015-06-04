class DataWrapper
  def initialize(data)
    @data = data
  end

  def method_missing(method, *args)
    if method =~ /=$/
      @data[$`] = args[0]
    else
      @data[method.to_s]
    end
  end

  def respond_to?(method)
    return @data.has_key? method.to_s
  end
end


