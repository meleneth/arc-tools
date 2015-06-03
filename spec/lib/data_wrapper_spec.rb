require 'spec_helper'

require 'data_wrapper'


describe "DataWrapper" do
  describe "#new" do
    it "takes a hash argument" do
      my_data = Hash.new
      data_wrapper = DataWrapper.new my_data
    end
  end
end

