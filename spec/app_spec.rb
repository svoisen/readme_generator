require 'spec_helper'

describe "App" do
  it "should respond to GET index" do
    get '/'
    last_response.body.should match(/It works!/)
  end
end
