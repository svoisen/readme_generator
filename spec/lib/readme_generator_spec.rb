require 'spec_helper'

describe "ReadmeGenerator" do
  it "should generate text" do
    ReadmeGenerator.generate("Dog").should_not be_nil
  end
end
