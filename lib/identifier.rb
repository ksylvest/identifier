module Identifier
  
  def self.generate
    
    begin
      `uuidgen`.strip
    rescue Errno::ENOENT
      raise "uuidgen not found"
    end
    
  end

end

