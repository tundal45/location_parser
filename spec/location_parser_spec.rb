require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require_relative '../lib/location_parser'

describe LocationParser do
  describe "locations with city & state information" do
    context "comma separated" do
      it "parses city & state information" do
        location_string = "New York, NY"
        parser = LocationParser.new(location_string)
        location = parser.parse
        location.city.should == "New York"
        location.state.should == "NY"
      end
    end

    context "space separated" do
      it "parses city & state information" do
        location_string = "San Francisco CA"
        parser = LocationParser.new(location_string)
        location = parser.parse
        location.city.should == "San Francisco"
        location.state.should == "CA"
      end
    end
  end

  describe "locations that specify two or more cities" do
    context "contains 'preferred'" do
      it "parses cities"
    end
  end

  describe "locations with country information" do
    context "just country name" do
      it "parses the country name"
    end

    context "full US address" do
      it "parses address, city, state, country and zipcode"
    end
  end

  describe "locations that include zipcode" do
    it "parses city, state, country and zipcode"
  end

  describe "locations listed as 'Anywhere'" do

  end

  describe "two or more locations separated by 'or'" do
    it "parses city & state from all locations"
  end

  describe "locations that list comma separeted US states" do
    it "parses all states"
  end

  describe "locations with neighborhood information" do
    context "state information included" do
      it "parses neighborhood, city and state"
    end
    context "no state information" do
      it "parses neighborhood and city"
    end
  end

  describe "locations with region information" do
    context "state information included" do
      it "parses city, state and region"
    end
    context "no state information" do
      it "parses city and region"
    end
  end
end
