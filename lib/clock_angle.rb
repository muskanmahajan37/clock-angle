def angle_hours (input_hour)

  degrees = 0
  1.upto(input_hour) do
    degrees += 30
  end
  if (degrees == 360)
    degrees = 0
  end
  degrees
end

def angle_minutes (input_min)
  degrees = 0
  1.upto(input_min) do
    degrees += 5
  end
  degrees
end

def angle_transform (input_time)
  time_array = input_time.split(":")
  hours = time_array[0].to_i
  minutes = time_array[1].to_i
  time = angle_hours(hours) - angle_minutes(minutes)
  time.abs
end
