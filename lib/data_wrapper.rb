class DataWrapper
  def initialize(data)
    @data = data
  end

  def method_missing(method, *args)
    if method =~ /=$/
      @data[$`] = args[0]
    else
      @data[method]
    end
  end
end


