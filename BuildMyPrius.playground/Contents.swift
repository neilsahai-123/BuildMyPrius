import UIKit

var greeting = "Hello, playground"


enum ModelColor: String {
    case CuttingEdge
    case GuardianGray
    case MidnightBlackMetallic
    case SupersonicRed
    case WindChillPearl
    case ReservoirBlue
    
    var colorPrice: Double {
        switch self {
        case .CuttingEdge:
            return 150
        case .GuardianGray:
            return 250
        case .MidnightBlackMetallic:
            return 350
        case .SupersonicRed:
            return 500
        case .WindChillPearl:
            return 1000
        case .ReservoirBlue:
            return 1250
        }
    }
}

enum ModelName: String  {
    case LE
    case LE_AWD
    case XLE
    case XLE_AWS
    case Limited
    case Limited_AWD
    
    var modelPrice: Double {
        switch self {
        case .LE:
            return 27450
        case .LE_AWD:
            return 28850
        case .XLE:
            return 30895
        case .XLE_AWS:
            return 32295
        case .Limited:
            return 34465
        case .Limited_AWD:
            return 35865
        }
    }
}

enum Packages: String  {
    case DigitalRearviewMirror
    case HeatedRearSeat
    case LimitedPremiumPackage
    
    var packagePrice: Double {
        switch self {
        case .DigitalRearviewMirror:
            return 200
        case .HeatedRearSeat:
            return 350
        case .LimitedPremiumPackage:
            return 1635
        }
    }
}

enum Accessories: String  {
    
    case WeatherFloorLiner
    case AlloyWheelLocks
    case BodySideMolding
    case CargoLiner
    case CarpetMatPackages
    case AshtrayCup
    case DoorEdgeGuards
    
    var accessoriesPrice: Double {
        switch self {
        case .WeatherFloorLiner:
            return 299
        case .AlloyWheelLocks:
            return 80
        case .BodySideMolding:
            return 275
        case .CargoLiner:
            return 120
        case .CarpetMatPackages:
            return 299
        case .AshtrayCup:
            return 17
        case .DoorEdgeGuards:
            return 150
        }
    }
}

struct CarDetail {
    var modelColor: ModelColor
    var modelName: ModelName
    var packages: Packages
    var accessories: Accessories
}

struct CarOrderDetails {
    var orderId: String
    var customerName: String
    var customerContactNo: String
    var totalPrice: Double
    var address: String? //Optional variable
    var carDetail: CarDetail
}


func getTotalPriceOfCar(car: CarDetail) -> Double {
    let colorPrice = car.modelColor.colorPrice
    let modelPrice = car.modelName.modelPrice
    let packagePrice = car.packages.packagePrice
    let accessoriesPrice = car.accessories.accessoriesPrice
    let orderTotal = colorPrice + modelPrice + packagePrice + accessoriesPrice
    return orderTotal
}


let carDetails = CarDetail(modelColor: .MidnightBlackMetallic,
                           modelName: .Limited_AWD,
                           packages: .DigitalRearviewMirror,
                           accessories: .CarpetMatPackages)

let carPrice = getTotalPriceOfCar(car: carDetails)
let order = CarOrderDetails(orderId: "1",
                            customerName: "Megan",
                            customerContactNo: "123456",
                            totalPrice: carPrice,
                            address: "123, Royal Villa, New York",
                            carDetail: carDetails)

let message =

"""
Hello \(order.customerName), your total amount for order is \(carPrice) and your order will be deliver in you address,
Your Car Details is
Model Name: \(order.carDetail.modelName.rawValue),
Model Color: \(order.carDetail.modelColor.rawValue),
Model Package: \(order.carDetail.packages.rawValue),
Model Accessories: \(order.carDetail.accessories.rawValue),
"""

print(message)
