require 'spec_helper'
require 'randomgenerator'

describe Randomgenerator do
  it "is named Christ the Center" do
    randomgenerator = Randomgenerator.new
    randomgenerator.name.should == 'Christ the Center'
  end

  it "is looking for Christ the Center versese" do
     randomgenerator = Randomgenerator.new
     randomgenerator.query.include?('Christ the Center')
    end
end
