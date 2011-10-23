require 'test/unit'

require 'identifier'

class IdentifierTest < Test::Unit::TestCase
  
  FORMAT = /\A\w{8}-\w{4}-\w{4}-\w{4}-\w{12}\Z/

  def test_format
    identifier = Identifier.generate
    assert(identifier =~ FORMAT, "identifiers should match a consistent format")
  end
  
  def test_unique
    alpha = Identifier.generate
    omega = Identifier.generate
    assert_not_equal(alpha, omega, "identifiers should be sequentially unique")
  end
  
end