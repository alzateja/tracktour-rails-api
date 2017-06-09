# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'artist.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
  artist = Artist.new
  artist.artist_name = row['artist_name']
  artist.save
  puts "#{artist.artist_name} saved"
end

puts "There are now #{Artist.count} rows in the artists table"
