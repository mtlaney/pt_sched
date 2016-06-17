json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :lh_region, :orig, :dest, :rail
  json.url schedule_url(schedule, format: :json)
end
