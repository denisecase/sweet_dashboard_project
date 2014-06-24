require "rest-client"

EARTHQUAKE_FEED_URL ="http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson"

SCHEDULER.every '4h', :first_in => '0s' do |job|

  #Dummy data if you just want to see it work
  #dummy_data = []
  #10.times {dummy_data << {lat:(32 + rand(18)), long: (-118 + rand(42)), weight: rand(10)}}
  #4.times {dummy_data << {lat:(41 + rand(12)), long: (0 + rand(25)), weight: rand(3)}}

  eq_json_data = RestClient.get EARTHQUAKE_FEED_URL
  raw_data = JSON.parse(eq_json_data)
  real_data = []
  raw_data['features'].each do |f|
    w = f['properties']['mag'] rescue 1
    coor = f['geometry']['coordinates'] rescue nil
    next if coor == nil
    lat = coor[1]
    long = coor[0]
    real_data << {lat: lat, long: long, weight: w}
  end

  send_event('heatmap', { values: real_data })
end
