require 'identifier'

FORMAT = /\A\w{8}-\w{4}-\w{4}-\w{4}-\w{12}\Z/

describe Identifier do
  
  it "matches a consistent format" do
    expect(Identifier.generate).to match(FORMAT)
  end
  
  it "is sequentially unique" do
    alpha = Identifier.generate
    omega = Identifier.generate
    expect(alpha).to_not eql(omega)
    expect(omega).to_not eql(alpha)
  end
  
end