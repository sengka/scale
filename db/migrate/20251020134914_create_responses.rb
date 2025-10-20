class CreateResponses < ActiveRecord::Migration[8.0]
  def change
    create_table :responses do |t|
      t.text :demographic_data
      t.text :response_data
      t.references :survey, null: false, foreign_key: true
      t.boolean :is_anonymous

      t.timestamps
    end
  end
end
