
//   let empty = try? newJSONDecoder().decode(Empty.self, from: jsonData)

import Foundation

// MARK: - Every3HoursWeatherModel
struct Every3HoursWeatherModel: Codable {
    let cod: String?
    let message: Int?
    let cnt: Int?
    let list: [List]?
    let city: City?
    
    enum CodingKeys: String, CodingKey {
        case cod = "cod"
        case message = "message"
        case cnt = "cnt"
        case list = "list"
        case city = "city"
    }
}

// MARK: - City
extension Every3HoursWeatherModel{
    struct City: Codable {
        let id: Int?
        let name: String?
        let coord: Coord?
        let country: String?
        let population: Int?
        let timezone: Int?
        let sunrise: Int?
        let sunset: Int?
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case coord = "coord"
            case country = "country"
            case population = "population"
            case timezone = "timezone"
            case sunrise = "sunrise"
            case sunset = "sunset"
        }
    }
}

// MARK: - Coord
extension Every3HoursWeatherModel{
    struct Coord: Codable {
        let lat: Double?
        let lon: Double?
        
        enum CodingKeys: String, CodingKey {
            case lat = "lat"
            case lon = "lon"
        }
    }
}

// MARK: - List
extension Every3HoursWeatherModel{
    struct List: Codable {
        let dt: Int?
        let main: Main?
        let weather: [Weather]?
        let clouds: Clouds?
        let wind: Wind?
        let visibility: Int?
        let pop: Int?
        let sys: Sys?
        let dtTxt: String?
        
        enum CodingKeys: String, CodingKey {
            case dt = "dt"
            case main = "main"
            case weather = "weather"
            case clouds = "clouds"
            case wind = "wind"
            case visibility = "visibility"
            case pop = "pop"
            case sys = "sys"
            case dtTxt = "dt_txt"
        }
    }
}

// MARK: - Clouds
extension Every3HoursWeatherModel{
    struct Clouds: Codable {
        let all: Int?
        
        enum CodingKeys: String, CodingKey {
            case all = "all"
        }
    }
}

// MARK: - Main
extension Every3HoursWeatherModel{
    struct Main: Codable {
        let temp: Double?
        let feelsLike: Double?
        let tempMin: Double?
        let tempMax: Double?
        let pressure: Int?
        let seaLevel: Int?
        let grndLevel: Int?
        let humidity: Int?
        let tempKf: Double?
        
        enum CodingKeys: String, CodingKey {
            case temp = "temp"
            case feelsLike = "feels_like"
            case tempMin = "temp_min"
            case tempMax = "temp_max"
            case pressure = "pressure"
            case seaLevel = "sea_level"
            case grndLevel = "grnd_level"
            case humidity = "humidity"
            case tempKf = "temp_kf"
        }
    }
}

// MARK: - Sys
extension Every3HoursWeatherModel{
    struct Sys: Codable {
        let pod: String?
        
        enum CodingKeys: String, CodingKey {
            case pod = "pod"
        }
    }
}

// MARK: - Weather
extension Every3HoursWeatherModel{
    struct Weather: Codable {
        let id: Int?
        let main: String?
        let weatherDescription: String?
        let icon: String?
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case main = "main"
            case weatherDescription = "description"
            case icon = "icon"
        }
    }
}
// MARK: - Wind
extension Every3HoursWeatherModel{
    struct Wind: Codable {
        let speed: Double?
        let deg: Int?
        let gust: Double?
        
        enum CodingKeys: String, CodingKey {
            case speed = "speed"
            case deg = "deg"
            case gust = "gust"
        }
    }
}
