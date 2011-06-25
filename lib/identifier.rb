require 'identifier/identifier'

begin
require 'securerandom' 
rescue LoadError
end

module Identifier
  
  def generate
    SecureRandom.uuid if defined? SecureRandom
    
    bytes = [
      rand(0xFFFFFFFF),
      rand(0x0000FFFF),
      rand(0x0000FFFF),
      rand(0x0000FFFF),
      rand(0x0000FFFF),
      rand(0xFFFFFFFF),
    ]
    
    bytes[2] = (bytes[2] & 0x0FFF) | 0x4000
    bytes[3] = (bytes[3] & 0x3FFF) | 0x8000
    
    "%08x-%04x-%04x-%04x-%04x%08x" % bytes
  end
  
end