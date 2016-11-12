class Paper < ActiveRecord::Base
	has_and_belongs_to_many :authors
	validates_presence_of :title, :venue
	validates :year, :numericality => {:only_integer => true}
end
