class Scale < ApplicationRecord
  belongs_to :user
# Survey ilişkisi (Çoktan Çoğa)
  has_many :survey_scales
  has_many :surveys, through: :survey_scales

  # [cite_start]Özellik Doğrulaması (DOI-benzeri unique identifier) [cite: 14, 39]
  validates :scale_identifier, presence: true, uniqueness: true
end
end
