class SurveyScale < ApplicationRecord
  belongs_to :survey
  belongs_to :scale
end
