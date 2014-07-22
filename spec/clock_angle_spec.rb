require('rspec')
require('clock_angle')

describe('angle_hours') do
  it("Returns 180 degrees for 6:00") do
    angle_hours(6).should(eq(180))
  end

  it("Returns 0 for 12:00") do
    angle_hours(12).should(eq(0))
  end
end

describe('angle_minutes') do
  it("Returns the angle of an input including both hours and minutes") do
    angle_minutes(12).should(eq(60))
  end
end

describe('angle_transform') do
  it("Returns the angular difference of the minute and hour hands") do
    angle_transform("6:00").should(eq(180))
  end
end
