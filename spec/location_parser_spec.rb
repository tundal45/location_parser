require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require_relative '../lib/location_parser'

describe LocationParser do
  it "should handle locations with comma separated city & state information"
  it "should handle locations with space separated city & state information"
  it "should handle locations that specify two or more preferred cities"
  it "should handle locations that include country"
  it "should handle locations that include zipcode"
  it "should handle locations listed as 'Anywhere'"
  it "should handle non-US locations"
  it "should handle two or more locations separated by 'or'"
  it "should handle locations that list comma separeted US states"
  it "should handle locations with neighborhood information"
  it "should handle locations with region information"
end
