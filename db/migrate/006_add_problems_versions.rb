class AddProblemsVersions < ActiveRecord::Migration
	  require_dependency 'problem'
	  def self.up
	    # create_versioned_table takes the same options hash
	    # that create_table does
	    Problem.create_versioned_table
	  end

	  def self.down
	    Problem.drop_versioned_table
	  end
	
end
