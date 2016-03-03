class User < ApplicationRecord
	has_many :questions
	has_many :messages
end
