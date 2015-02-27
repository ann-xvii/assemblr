class User < ActiveRecord::Base

	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: {case_sensitive: false }
end
