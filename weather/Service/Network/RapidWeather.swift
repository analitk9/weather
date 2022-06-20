import Foundation
import Moya

struct Request {
    let params: [String: Any]
}

enum RapidWeather {
    case currentWeather(Request) // погода сейчас
    case forecastWeather5DayEvery3hours(Request)// погода на 5 дней с изменением каждые 3 часа
    case forecastWeatherDaily(Request) // погода за 10 дней
}

extension RapidWeather: TargetType {
   
    var sampleData: Data {
        return Data()
    }

    private static let host = "community-open-weather-map.p.rapidapi.com"
    private static let url = "https://\(RapidWeather.host)"
    private static let apiKey = "7745d9e80emsh03a7ad38b3e50bep100cdfjsn6c088a9a9d7b"
    
    var baseURL: URL {
        URL(string: RapidWeather.url)!
    }
    
    var path: String {
        switch self {
        case .currentWeather:
            return "/weather"
        case .forecastWeather5DayEvery3hours:
            return "/forecast"
        case .forecastWeatherDaily:
            return "/forecast/daily"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .currentWeather, .forecastWeather5DayEvery3hours, .forecastWeatherDaily:
            return .get
        }
    }
    
    
    var task: Task {
        switch self {
        case  .currentWeather(let request), .forecastWeather5DayEvery3hours(let request), .forecastWeatherDaily(let request):
            return .requestParameters(parameters: request.params, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        ["X-RapidAPI-Host": Self.host,
         "X-RapidAPI-Key": Self.apiKey]
    }

    
}


