//
//  ViewModel.swift
//  OpenInApp_Assignment
//
//  Created by Smit Patel on 03/04/24.
//

import Foundation

class ViewModel : ObservableObject {
    
    @Published var response: Response?
    
    func fetch() {
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            if let error = error {
                print("Error fetching data: \(error)")
                return
            }
            
            // convert to JSON
            
            do {
                let decodedData = try JSONDecoder().decode(Response.self, from: data!)
                
                DispatchQueue.main.async {
                    self?.response = decodedData
                }
            } catch {
                print(error)
            }
            
        }
        
        task.resume()
    }
}


struct Response: Codable{
    
    let status: Bool
    let statusCode: Int
    let message: String
    let support_whatsapp_number: String
    let extra_income: Float
    let total_links: Int
    let total_clicks: Int
    let today_clicks: Int
    let top_source: String
    let top_location: String
    let startTime: String
    let links_created_today: Int
    let applied_campaign: Int
    let data: DataResponse
}

struct RecentLink: Codable {
    let url_id: Int
    let web_link: String
    let smart_link: String
    let title: String
    let total_clicks: Int
    let original_image: String
    let thumbnail: String? // Or you can replace `String?` with `String` if it's always present
    let times_ago: String
    let created_at: String
    let domain_id: String
    let url_prefix: String?
    let url_suffix: String
    let app: String
    let is_favourite: Bool
}

struct TopLink: Codable {
    let url_id: Int
    let web_link: String
    let smart_link: String
    let title: String
    let total_clicks: Int
    let original_image: String
    let thumbnail: String? // Or you can replace `String?` with `String` if it's always present
    let times_ago: String
    let created_at: String
    let domain_id: String
    let url_prefix: String?
    let url_suffix: String
    let app: String
    let is_favourite: Bool
}

struct LinkChartData: Identifiable {
  let id: Int
  let title: String
  let totalClicks: Int
}


struct DataResponse: Codable {
    let recent_links: [RecentLink]
    let top_links: [TopLink]
    
    
    enum CodingKeys: String, CodingKey {
        case recent_links
        case top_links
        
    }
}
