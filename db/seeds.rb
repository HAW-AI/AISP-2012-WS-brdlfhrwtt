# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'


# federal states
state_names =
  [ "Baden-Württemberg",
    "Bayern",
    "Berlin",
    "Brandenburg",
    "Bremen",
    "Hamburg",
    "Hessen",
    "Mecklenburg-Vorpommer",
    "Niedersachsen",
    "Nordrhein-Westfalen",
    "Rheinland-Pfalz",
    "Saarland",
    "Sachsen",
    "Sachsen-Anhalt",
    "Schleswig-Holstein",
    "Thüringen" ]


state_names.each do |state_name|
  state = State.new
  state.name = state_name
  state.save!
end



# rates and fees

def filename_to_path(filename)
  File.dirname(__FILE__) + '/seeds/' + filename + '.csv'
end

def import_fees(filename)
  row = CSV.open(filename_to_path(filename), 'rb', col_sep: ';').first.map!(&:strip)

  max_age, care_time = row

  fee = Fee.new
  fee.max_age = max_age
  fee.care_time = care_time

  if fee.save then fee else nil end
end

def import_rates(filename)
  # 1st fee
  fee = import_fees("fee_" + filename)

  # 2nd fee
  if (File.exists?(filename_to_path("fee_" + filename + "2"))) then
    fee2 = import_fees("fee_" + filename + "2")
  end


  # rate
  CSV.open(filename_to_path(filename), 'rb', col_sep: ';').each do |row|
    row.map!(&:strip)

    net_income, two_people, three_people, four_people, five_people, six_people = row

    rate = Rate.new
    rate.state = State.find_by_name("Hamburg")
    rate.net_income = net_income
    rate.two_people = two_people
    rate.three_people = three_people
    rate.four_people = four_people
    rate.five_people = five_people
    rate.six_people = six_people

    rate.fee = fee
    rate.save

    if fee2 then
      rate = Rate.new
      rate.state = State.find_by_name("Hamburg")
      rate.net_income = net_income
      rate.two_people = two_people
      rate.three_people = three_people
      rate.four_people = four_people
      rate.five_people = five_people
      rate.six_people = six_people

      rate.fee = fee2
      rate.save
    end
  end
end

('a'..'h').each do |letter|
  filename = 'tabelle_' + letter
  import_rates(filename)
end
