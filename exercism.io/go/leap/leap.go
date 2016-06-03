package leap

import "math"

const testVersion = 2

func IsLeapYear(year int) bool {
	fyear := float64(year)

	return math.Mod(fyear, 4) == 0 &&
		(math.Mod(fyear, 100) > 0 || math.Mod(fyear, 400) == 0)
}
