class CreateSurveyScales < ActiveRecord::Migration[8.0]
  def change
    create_table :survey_scales do |t|
      t.references :survey, null: false, foreign_key: true
      t.references :scale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
