module Identifier
  
  # Generate a universally unique identifier on a UNIX, Linx or Mac OS X system.
  #
  # Usage:
  #
  #   Identifier.generate # 53FB3F0B-C19A-41E1-8718-5BABE85CD341
  
  def self.generate
    begin
      result = `uuidgen`
    rescue Errno::ENOENT
      result = `/bin/uuidgen`
    rescue Errno::ENOENT
      result = `/sbin/uuidgen`
    rescue Errno::ENOENT
      result = `/usr/bin/uuidgen`
    rescue Errno::ENOENT
      result = `/usr/sbin/uuidgen`
    end
    
    result.strip
  end
  
end