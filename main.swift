enum TemperatureUnit: String {
    case celsius = "Celsius"
    case fahrenheit = "Fahrenheit"
}

func convertTemperature(value: Double, fromUnit: TemperatureUnit, toUnit: TemperatureUnit) -> Double {
    var result: Double = 0.0
    
    switch (fromUnit, toUnit) {
    case (.celsius, .fahrenheit):
        result = (value * 9/5) + 32
    case (.fahrenheit, .celsius):
        result = (value - 32) * 5/9
    default:
        result = value
    }
    
    return result
}

print("\n\nDigite um valor de temperatura em Celsius: ")
let celsiusValue = Double(readLine()!) ?? 0.0
let convertedToFahrenheit = convertTemperature(value: celsiusValue, fromUnit: .celsius, toUnit: .fahrenheit)
print("\(celsiusValue)°C é \(convertedToFahrenheit)°F")

print("\n\nDigite um valor de temperatura em Fahrenheit: ")
let fahrenheitValue = Double(readLine()!) ?? 0.0
let convertedToCelsius = convertTemperature(value: fahrenheitValue, fromUnit: .fahrenheit, toUnit: .celsius)
print("\(fahrenheitValue)°F é \(convertedToCelsius)°C")