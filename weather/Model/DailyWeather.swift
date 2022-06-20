import Foundation

//   let resultWeather = try? newJSONDecoder().decode(WeatherModel.self, from: jsonData)

import Foundation

// MARK: - DailyWeatherModel
struct DailyWeatherModel: Codable {
    let city: City
    let cod: String
    let message: Double
    let cnt: Int
    let list: [List]
    
    enum CodingKeys: String, CodingKey {
        case city = "city"
        case cod = "cod"
        case message = "message"
        case cnt = "cnt"
        case list = "list"
    }
}

// MARK: - City
extension DailyWeatherModel {
    struct City: Codable {
        let id: Int
        let name: String
        let coord: Coord
        let country: String
        let population: Int
        let timezone: Int
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case coord = "coord"
            case country = "country"
            case population = "population"
            case timezone = "timezone"
        }
    }
}

// MARK: - Coord
extension DailyWeatherModel {
    struct Coord: Codable {
        let lon: Double
        let lat: Double
        
        enum CodingKeys: String, CodingKey {
            case lon = "lon"
            case lat = "lat"
        }
    }
}

// MARK: - List
extension DailyWeatherModel {
    struct List: Codable {
        let dt: Int
        let sunrise: Int
        let sunset: Int
        let temp: Temp
        let feelsLike: FeelsLike
        let pressure: Int
        let humidity: Int
        let weather: [Weather]
        let speed: Double
        let deg: Int
        let gust: Double
        let clouds: Int
        let pop: Int
        let rain: Int?
        
        
        enum CodingKeys: String, CodingKey {
            case dt = "dt"
            case sunrise = "sunrise"
            case sunset = "sunset"
            case temp = "temp"
            case feelsLike = "feels_like"
            case pressure = "pressure"
            case humidity = "humidity"
            case weather = "weather"
            case speed = "speed"
            case deg = "deg"
            case gust = "gust"
            case clouds = "clouds"
            case pop = "pop"
            case rain = "rain"
        }
    }
}

// MARK: - FeelsLike
extension DailyWeatherModel {
    struct FeelsLike: Codable {
        let day: Double
        let night: Double
        let eve: Double
        let morn: Double
        
        enum CodingKeys: String, CodingKey {
            case day = "day"
            case night = "night"
            case eve = "eve"
            case morn = "morn"
        }
    }
}

// MARK: - Temp
extension DailyWeatherModel {
    struct Temp: Codable {
        let day: Double
        let min: Double
        let max: Double
        let night: Double
        let eve: Double
        let morn: Double
        
        enum CodingKeys: String, CodingKey {
            case day = "day"
            case min = "min"
            case max = "max"
            case night = "night"
            case eve = "eve"
            case morn = "morn"
        }
    }
}

// MARK: - Weather
extension DailyWeatherModel {
    struct Weather: Codable {
        let id: Int
        let main: String
        let weatherDescription: String
        let icon: String
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case main = "main"
            case weatherDescription = "description"
            case icon = "icon"
        }
    }
}

