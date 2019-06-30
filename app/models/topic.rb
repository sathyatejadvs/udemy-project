class Topic < ApplicationRecord
	validates_presence_of :title
	has_many :blogs

  accepts_nested_attributes_for :blogs, reject_if: proc { |attributes| attributes['topic'].blank? }
end
