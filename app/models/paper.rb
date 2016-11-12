class Paper < ActiveRecord::Base
	belongs_to :author
	validates_presence_of :title, :venue
	validates :year, :numericality => {:only_integer => true}
end
