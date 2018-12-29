require 'csv'

desc 'Import from csv'
task :import_csv => :environment do
	filename = "#{RAILS_ROOT}/db/betabase_dump.csv"
	csv = CSV::parse(File.open(filename, 'r') {|f| f.read })
	headers = csv.shift
	
 	# @parsed_file=CSV::Reader.parse(filename)
# 0 name
# 1 GRD
# 2 GRD2
# 3 Fear
# 4 Star
# 5 Morph
# 6 Feature
# 7 FA_Name
# 8 FA_Date
# 9 S_Init
# 10 S_Date
# 11 Ph oto
# 12 B_Name
# 13 B_Area
# 14 P_Desc
# 15 B_GPS
# 16 B_Loc
#
  csv.each do |row|
		p=Problem.new
		p.name=row[0]
		p.grade=row[1].gsub('v','').to_i if row[1]
		p.grade_alt=row[2].gsub('v','').to_i if row[2]
		p.exposure=row[3]
		p.star=row[4]
		p.morph = row[5] == 'y' ? true : false
		p.feature=row[6]
		p.fa_name=row[7]
		p.fa_date=row[8]
		p.boulder=row[12]
		p.area=row[13]
		p.gps=row[15]
		p.boulder_directions=row[16]
		p.problem_description=row[14]
		if !p.save
			puts "Error saving #{p.name}"
			puts p.errors.inspect
		end
	end
end