require 'csv';

table = CSV.parse(File.read("_data/wcag.csv"))
print table.map { |row| [row[0],row[1],row[2],row[4],row[5],row[7]].join(",") }.join("\n")

# table.map { |cell| cell.join(",") }.join("\n")
