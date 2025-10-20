class Survey < ApplicationRecord
  belongs_to :user
# İlişkiler
  has_many :responses, dependent: :destroy # Yanıtlara sahiptir

  # Scale ilişkisi (Çoktan Çoğa)
  has_many :survey_scales
  has_many :scales, through: :survey_scales
end
