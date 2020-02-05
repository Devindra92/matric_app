class Record < ApplicationRecord
	def self.search(search)
  	if search
  		where("name ILIKE ? OR centre_no ILIKE ?", "%#{search}%", "%#{search}%") 
  	else
  		all
  	end
  end
end
