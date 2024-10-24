class Teacher < ApplicationRecord
  # Devise modules for authentication
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:username]

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }

end
