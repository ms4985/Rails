namespace :library do 
	desc 'This rake task will take the Brooklyn Public Library database and populate my database with its data'
	task :popDB => :environment do
		require 'csv'
		file = 'Brooklyn_Public_Library_Catalog.csv'

		CSV.foreach(file, :headers => true, :col_sep => ',') do |row|
			Catalog.create( {
				:call => row[0],
				:author => row[1],
				:title => row[2],
				:edition => row[3],
				:pub => row[4],
				:std => row[5]
				})
		end
	end
end
