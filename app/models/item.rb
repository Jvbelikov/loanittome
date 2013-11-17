class Item < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :category
	has_attached_file :photo, styles:
		{ medium: "300x300>", thumb: "100x100>" },
		default_url: "/images/:styles/missing.png"

	def category_name
		if category.present?
			category.title
		else
			"Not Set"
		end
	end
end
