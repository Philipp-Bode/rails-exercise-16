class Author < ActiveRecord::Base
	has_many :papers
	validates_presence_of :last_name

	def name
		"#{first_name} #{last_name}"
	end
end
