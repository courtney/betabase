class ChangeGradesToInt < ActiveRecord::Migration
  def self.up
		change_column(:problems, :grade, :integer)
		change_column(:problems, :grade_alt, :integer)
  end

  def self.down
		change_column(:problems, :grade, :string)
		change_column(:problems, :grade_alt, :string)
  end
end
