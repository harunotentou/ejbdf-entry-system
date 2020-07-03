class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :competitions do |t|
      t.date :due_on
      t.string :name
      t.string :place

      t.timestamps
    end
  end
end
