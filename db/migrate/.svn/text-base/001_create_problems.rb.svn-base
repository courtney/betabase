class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.string :name
      t.string :grade
      t.string :grade_alt
      t.string :exposure
      t.integer :star
      t.boolean :morph
      t.string :feature
      t.string :fa_name
      t.string :fa_date
      t.string :boulder
      t.string :area
      t.string :gps
      t.text :boulder_directions
      t.text :problem_description

      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end
end
