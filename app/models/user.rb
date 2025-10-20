class User < ApplicationRecord
  has_many :scales
  has_many :surveys
  has_many :analyses

  ROLES = %w[researcher clinician student]
  validates :role, inclusion: { in: ROLES }
  validates :email, presence: true, uniqueness: true
  validates :credit_balance, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
