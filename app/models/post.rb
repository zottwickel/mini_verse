class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	validates :title, presence: true,
					  length: { maximum: 50 },
					  uniqueness: { case_sensitive: false }

	validates :body,  presence: true,
					  length: { maximum: 216 }

end
