class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :status
      t.timestamp :deadline
      t.text :description
      t.date :start_date

      t.timestamps
    end
  end
end
