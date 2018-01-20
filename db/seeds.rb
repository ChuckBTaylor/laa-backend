# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'JSON'

API_KEY = "hOsiWTOsFAa4UVwNKSWxME1RfXigd1mOs9owVI5g"

al = State.create(name: "Alabama", abbreviation: "AL")
counter = 1
7.times do
  District.create(number: "#{counter}", state: al)
  counter += 1
end

ak = State.create(name: "Alaska", abbreviation: "AK")
counter = 1
1.times do
  District.create(number: "#{counter}", state: ak)
  counter += 1
end

az = State.create(name: "Arizona", abbreviation: "AZ")
counter = 1
9.times do
  District.create(number: "#{counter}", state: az)
  counter += 1
end

ar = State.create(name: "Arkansas", abbreviation: "AR")
counter = 1
4.times do
  District.create(number: "#{counter}", state: ar)
  counter += 1
end

ca = State.create(name: "California", abbreviation: "CA")
counter = 1
53.times do
  District.create(number: "#{counter}", state: ca)
  counter += 1
end

co = State.create(name: "Colorado", abbreviation: "CO")
counter = 1
7.times do
  District.create(number: "#{counter}", state: co)
  counter += 1
end

ct = State.create(name: "Connecticut", abbreviation: "CT")
counter = 1
5.times do
  District.create(number: "#{counter}", state: ct)
  counter += 1
end

de = State.create(name: "Delaware", abbreviation: "DE")
counter = 1
1.times do
  District.create(number: "#{counter}", state: de)
  counter += 1
end

fl = State.create(name: "Florida", abbreviation: "FL")
counter = 1
27.times do
  District.create(number: "#{counter}", state: fl)
  counter += 1
end

ga = State.create(name: "Georgia", abbreviation: "GA")
counter = 1
14.times do
  District.create(number: "#{counter}", state: ga)
  counter += 1
end

hi = State.create(name: "Hawaii", abbreviation: "HI")
counter = 1
2.times do
  District.create(number: "#{counter}", state: hi)
  counter += 1
end

id = State.create(name: "Idaho", abbreviation: "ID")
counter = 1
2.times do
  District.create(number: "#{counter}", state: id)
  counter += 1
end

il = State.create(name: "Illinois", abbreviation: "IL")
counter = 1
18.times do
  District.create(number: "#{counter}", state: il)
  counter += 1
end

ind = State.create(name: "Indiana", abbreviation: "IN")
counter = 1
9.times do
  District.create(number: "#{counter}", state: ind)
  counter += 1
end

ia = State.create(name: "Iowa", abbreviation: "IA")
counter = 1
4.times do
  District.create(number: "#{counter}", state: ia)
  counter += 1
end

ks = State.create(name: "Kansas", abbreviation: "KS")
counter = 1
4.times do
  District.create(number: "#{counter}", state: ks)
  counter += 1
end

ky = State.create(name: "Kentucky", abbreviation: "KY")
counter = 1
6.times do
  District.create(number: "#{counter}", state: ky)
  counter += 1
end

la = State.create(name: "Louisiana", abbreviation: "LA")
counter = 1
6.times do
  District.create(number: "#{counter}", state: la)
  counter += 1
end

me = State.create(name: "Maine", abbreviation: "ME")
counter = 1
2.times do
  District.create(number: "#{counter}", state: me)
  counter += 1
end

md = State.create(name: "Maryland", abbreviation: "MD")
counter = 1
8.times do
  District.create(number: "#{counter}", state: md)
  counter += 1
end

ma = State.create(name: "Massachusetts", abbreviation: "MA")
counter = 1
9.times do
  District.create(number: "#{counter}", state: ma)
  counter += 1
end

mi = State.create(name: "Michigan", abbreviation: "MI")
counter = 1
14.times do
  District.create(number: "#{counter}", state: mi)
  counter += 1
end

mn = State.create(name: "Minnesota", abbreviation: "MN")
counter = 1
8.times do
  District.create(number: "#{counter}", state: mn)
  counter += 1
end

ms = State.create(name: "Mississippi", abbreviation: "MS")
counter = 1
4.times do
  District.create(number: "#{counter}", state: ms)
  counter += 1
end

mo = State.create(name: "Missouri", abbreviation: "MO")
counter = 1
8.times do
  District.create(number: "#{counter}", state: mo)
  counter += 1
end

mt = State.create(name: "Montana", abbreviation: "MT")
counter = 1
1.times do
  District.create(number: "#{counter}", state: mt)
  counter += 1
end

ne = State.create(name: "Nebraska", abbreviation: "NE")
counter = 1
3.times do
  District.create(number: "#{counter}", state: ne)
  counter += 1
end

nv = State.create(name: "Nevada", abbreviation: "NV")
counter = 1
4.times do
  District.create(number: "#{counter}", state: nv)
  counter += 1
end

nh = State.create(name: "New Hampshire", abbreviation: "NH")
counter = 1
2.times do
  District.create(number: "#{counter}", state: nh)
  counter += 1
end

nj = State.create(name: "New Jersey", abbreviation: "NJ")
counter = 1
12.times do
  District.create(number: "#{counter}", state: nj)
  counter += 1
end

nm = State.create(name: "New Mexico", abbreviation: "NM")
counter = 1
3.times do
  District.create(number: "#{counter}", state: nm)
  counter += 1
end

ny = State.create(name: "New York", abbreviation: "NY")
counter = 1
27.times do
  District.create(number: "#{counter}", state: ny)
  counter += 1
end

nc = State.create(name: "North Carolina", abbreviation: "NC")
counter = 1
13.times do
  District.create(number: "#{counter}", state: nc)
  counter += 1
end

nd = State.create(name: "North Dakota", abbreviation: "ND")
counter = 1
1.times do
  District.create(number: "#{counter}", state: nd)
  counter += 1
end

oh = State.create(name: "Ohio", abbreviation: "OH")
counter = 1
16.times do
  District.create(number: "#{counter}", state: oh)
  counter += 1
end

ok = State.create(name: "Oklahoma", abbreviation: "OK")
counter = 1
5.times do
  District.create(number: "#{counter}", state: ok)
  counter += 1
end

ore = State.create(name: "Oregon", abbreviation: "OR")
counter = 1
5.times do
  District.create(number: "#{counter}", state: ore)
  counter += 1
end

pa = State.create(name: "Pennsylvania", abbreviation: "PA")
counter = 1
18.times do
  District.create(number: "#{counter}", state: pa)
  counter += 1
end

ri = State.create(name: "Rhode Island", abbreviation: "RI")
counter = 1
2.times do
  District.create(number: "#{counter}", state: ri)
  counter += 1
end

sc = State.create(name: "South Carolina", abbreviation: "SC")
counter = 1
7.times do
  District.create(number: "#{counter}", state: sc)
  counter += 1
end

sd = State.create(name: "South Dakota", abbreviation: "SD")
counter = 1
1.times do
  District.create(number: "#{counter}", state: sd)
  counter += 1
end

tn = State.create(name: "Tennessee", abbreviation: "TN")
counter = 1
9.times do
  District.create(number: "#{counter}", state: tn)
  counter += 1
end

tx = State.create(name: "Texas", abbreviation: "TX")
counter = 1
36.times do
  District.create(number: "#{counter}", state: tx)
  counter += 1
end

ut = State.create(name: "Utah", abbreviation: "UT")
counter = 1
4.times do
  District.create(number: "#{counter}", state: ut)
  counter += 1
end

vt = State.create(name: "Vermont", abbreviation: "VT")
counter = 1
1.times do
  District.create(number: "#{counter}", state: vt)
  counter += 1
end

va = State.create(name: "Virginia", abbreviation: "VA")
counter = 1
11.times do
  District.create(number: "#{counter}", state: va)
  counter += 1
end

wa = State.create(name: "Washington", abbreviation: "WA")
counter = 1
10.times do
  District.create(number: "#{counter}", state: wa)
  counter += 1
end

wv = State.create(name: "West Virginia", abbreviation: "WV")
counter = 1
3.times do
  District.create(number: "#{counter}", state: wv)
  counter += 1
end

wi = State.create(name: "Wisconsin", abbreviation: "WI")
counter = 1
8.times do
  District.create(number: "#{counter}", state: wi)
  counter += 1
end

wy = State.create(name: "Wyoming", abbreviation: "WY")
counter = 1
1.times do
  District.create(number: "#{counter}", state: wy)
  counter += 1
end

senator_string = RestClient.get('https://api.propublica.org/congress/v1/115/senate/members.json', headers={"X-API-Key": API_KEY})

senator_data = JSON.parse(senator_string)
senator_data['results'][0]['members'].each do |member|
  if member['in_office']
    Senator.create(
      name: "#{member['first_name']} #{member['last_name']}",
      party: member['party'],
      state: State.find_by(abbreviation: member['state']))
  end
end

rep_string = RestClient.get('https://api.propublica.org/congress/v1/115/house/members.json', headers={"X-API-Key": API_KEY})

rep_data = JSON.parse(rep_string)
counter = 0
rep_data['results'][0]['members'].each do |member|
  state = State.find_by(abbreviation: member['state'])
  if member['in_office'] && state
    district = member['district'] == "At-Large" ? 1 : member['district']

    Rep.create(
      name: "#{member['first_name']} #{member['last_name']}",
      party: member['party'],
      district: state.getUserDistrict(district)
    )
  else
    counter +=1
  end
end

puts "#{counter} reps not added due #{rep_data['results'][0]['members'].length}"

#PA 18th
#OH 12th
#MI 13th
#AZ 8th
