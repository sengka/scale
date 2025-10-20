class CreateAnalyses < ActiveRecord::Migration[8.0]
  def change
    create_table :analyses do |t|
      t.string :analysis_type
      t.string :status
      t.text :result_data
      t.integer :credit_cost
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
