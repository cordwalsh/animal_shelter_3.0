class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

def self.search_name(name)
  where(name: name)
end

end
