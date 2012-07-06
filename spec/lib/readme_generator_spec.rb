require 'spec_helper'

describe "ReadmeGenerator" do
  before(:all) do
    @generator = ReadmeGenerator.new
  end

  it "should generate text" do
    @generator.generate("Foo").should_not be_nil
  end

  it "should generate text that includes the provided name" do
    (/Foo/ =~ @generator.generate("Foo")).should_not be_nil
  end
end
