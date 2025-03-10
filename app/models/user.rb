class User < ApplicationRecord
  has_secure_password #comes with gem
  validates :email, presence: true, uniqueness: true

  validates :role, inclusion: { in: %w[user admin], message: "%{value} is not a valid role" }

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
