import UIKit

class Airplane
{
    var altitude: Double = 0

    func setAltitude(feet: Double) {
        altitude = feet
    }
}

extension Airplane
{
    func setAltitude(meter: Double) {
        altitude = meter * 3.28084
    }
}

let airplane = Airplane()
airplane.setAltitude(meter: 12000)
print(airplane.altitude)
