class User < ApplicationRecord
	has_many :posts
	has_many :comments

	before_save { email.downcase! }

	validates :name,  presence: true,
			 		  length: { maximum: 50 }

	validates :email, presence: true,
					  length: { maximum: 255 },
					  format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i },
					  uniqueness: { case_sensitive: false }
end