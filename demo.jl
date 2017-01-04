# R from the center of rotation in meters
# AngularVelocity in rpm (rotations per minute)
# output : Centripetal Acceleration (or gravity level) in g

function gravity(R, AngVel)
	println("gravity level: ", 0.0011182439581632371 * R * AngVel ^ 2)
end

function sphere(R)
	println("volume: ", 4/3 * pi * R ^ 3)
	println("surface area: ", 4 * pi * R ^ 2)
end

function areaPerPersonSurfaceSphere(R, population)
	println("area per person: ", (4 * pi * R ^ 2) / population)
end

function torus(R, r)
	println("volume: ", 2 * pi ^ 2 * R * r ^ 2)
	println("surface area: ", 4 * pi ^ 2 * R * r)
end

function areaPerPersonSurfaceTorus(R, r, population)
	println("area per person: ", (4 * pi ^ 2 * R * r) / population)
end

function cylinder(R, h)
	println("volume: ", pi * R ^ 2 * h)
	println("surface area: ", 2 * pi * r ^ 2 + 2 * pi * r * h)
end

function areaPerPersonSurfaceCylinder(R, h, population)
	println("area per person: ", (2 * pi * r ^ 2 + 2 * pi * r * h) / population)
end

function areaPerPersonMultilevelCylinder(R, h, population, numLevels)
	livingArea = 0
	floorHeight = height / numLevels

	for i = 1:numFloor
		livingArea = livingArea + (pi * radius * radius)
	end

	println("area per person: ", / population)

	println("area per person: ", (livingArea / population) )
	println("floor height: ", floorHeight )
end

# daily kilocalorie requirements calculated using the Harris–Benedict equation, revised by Mifflin and St Jeor
# gender = "female"/"male", weight = [kg], height = [cm], age = [years], energeticFactor = "little"/"1to3dweek"/"3to5dweek"/"6to7dweek"/"heavy"

function calIntake(gender, weight, height, age, energeticFactor)

	result = 10 * weight + 6.25 * height - 5 * age;

	if gender == "female"
		result = result - 161
	else
		result = result + 5
	end

	if energeticFactor == "little"
		println("daily calories needed: ", result * 1.2)
	elseif energeticFactor == "1to3dweek"
		println("daily calories needed: ", result * 1.375)
	elseif energeticFactor == "3to5dweek"
		println("daily calories needed: ", result * 1.55)
	elseif energeticFactor == "6to7dweek"
		println("daily calories needed: ", result * 1.725)
	else
		println("daily calories needed: ", result * 1.9)
	end

end

# goo.gl/9hzVDy , goo.gl/7QHolX
# weight = [kg], energeticFactor = "little"/"1to3dweek"/"3to5dweek"/"6to7dweek"/"heavy"

function water(weight, energeticFactor)

	weight = weight * 2.20462262185

	result = 0.0295735296 * weight * 0.5

	if energeticFactor == "little"
		println("water daily (in l): ", result)
	elseif energeticFactor == "1to3dweek"
		println("water daily (in l): ", result + 12 * 0.0295735296 * 4/3)
	elseif energeticFactor == "3to5dweek"
		println("water daily (in l): ", result + 12 * 0.0295735296 * 7/3)
	elseif energeticFactor == "6to7dweek"
		println("water daily (in l): ", result * 1.725 + 12 * 0.0295735296 * 11/3)
	else
		println("water daily (in l): ", result * 1.9 + 12 * 0.0295735296 * 19/3)
	end

end