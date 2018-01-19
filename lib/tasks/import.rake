require 'csv'

namespace :import do

		task report: :environment do
			filename = File.join "2016_Matric_Schools.csv"
			CSV.foreach(filename) do |row|
				emis,centre_no,name,wrote_2014,passed_2014,wrote_2015,passed_2015,wrote_2016,passed_2016 = row

			Record.create(emis: emis, centre_no: centre_no, name: name,
			wrote_2014: wrote_2014, passed_2014: passed_2014, wrote_2015: wrote_2015, passed_2015: passed_2015,
			wrote_2016: wrote_2016, passed_2016: passed_2016)
		end
	end
end