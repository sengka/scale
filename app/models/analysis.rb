class Analysis < ApplicationRecord
  belongs_to :user
# app/models/analysis.rb

  # [cite_start]Kredi maliyeti doğrulama (5-15 credit/analysis) [cite: 139]
  validates :credit_cost, numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 15 }
end
