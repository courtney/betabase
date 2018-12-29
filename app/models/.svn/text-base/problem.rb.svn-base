class Problem < ActiveRecord::Base
  acts_as_versioned

  validates_presence_of :name, :message => "Please enter a name for the boulder problem"
  validates_presence_of :boulder, :message => "Please enter the boulder that the problem is on"
  validates_presence_of :area, :message => "Please enter the area the boulder and problem can be found at"
  validates_numericality_of :grade, :grade_alt, :allow_nil => true, :only_integer => true 	
  validates_uniqueness_of :name, :message => " has already been added to the database"
	
	def self.find_problems_by_grade
		find(:all, :order => 'grade desc')
	end
	
end
