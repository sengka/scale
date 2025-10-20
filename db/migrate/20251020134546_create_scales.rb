class CreateScales < ActiveRecord::Migration[8.0]
  def change
    create_table :scales do |t|
      t.string :title
      t.string :scale_identifier
      t.text :metadata
      t.integer :citation_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
