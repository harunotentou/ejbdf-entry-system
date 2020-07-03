class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :category
      t.string :name
      t.string :event
      t.references :competition, foreign_key: true

      t.timestamps
    end
  end
end
