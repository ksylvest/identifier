begin
require 'securerandom' 
rescue LoadError
end

module Identifier
  
  def self.generate
    if defined? SecureRandom
      return SecureRandom.uuid if SecureRandom.respond_to? :uuid
      
      bytes = SecureRandom.random_bytes(16)
      bytes = bytes.unpack("NnnnnN")
    end
    
    bytes ||= 
    [
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