module Identifier
  
  def self.generate
    `uuidgen`.strip
  end

end

