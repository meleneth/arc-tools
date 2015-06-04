require 'spec_helper'
require 'data_wrapper'

describe "DataWrapper" do
  describe "#new" do
    it "takes a hash argument" do
      my_data = Hash.new
      data_wrapper = DataWrapper.new my_data
    end
  end

  it "works for getting" do
    my_data = {"foo" => "bar"}
    data_wrapper = DataWrapper.new my_data

    expect(my_data["foo"]).to eq "bar"
  end
  it "works for setting" do
    my_data = {"foo" => "bar"}
    data_wrapper = DataWrapper.new my_data

    data_wrapper.foo = "blatt"
    expect(my_data["foo"]).to eq "blatt"
  end

  describe "respond_to?" do
    it "works for hash keys" do
      my_data = {"foo" => "bar"}
      data_wrapper = DataWrapper.new my_data
      expect(data_wrapper.respond_to?(:foo)).to be_truthy
    end
  end
end

