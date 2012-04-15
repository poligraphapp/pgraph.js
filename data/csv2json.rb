require 'json'

res = []

string = open('pid.csv').read
string.split("\n").each do |line|
  res.push(({:src => line.split(',')[0], :dest => line.split(',')[1], :val => line.split(',')[2]}))
end

of = File.open('data.json', "w")
of.write(res.to_json)
of.close
