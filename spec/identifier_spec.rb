require 'identifier'

FORMAT = /\A\w{8}-\w{4}-\w{4}-\w{4}-\w{12}\Z/

describe Identifier do
  
  it "matches a consistent format" do
    Identifier.generate.should match(FORMAT)
  end
  
  it "is sequentially unique" do
    alpha = Identifier.generate
    omega = Identifier.generate
    alpha.should_not eql(omega)
    omega.should_not eql(alpha)
  end
  
end