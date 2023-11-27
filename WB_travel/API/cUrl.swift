//
//  cUrl.swift
//  WB_travel
//
//  Created by Ekaterina Saveleva on 27.11.2023.
//

import Foundation

import Foundation


func getDataFromCUrl() {
    guard let url = URL(string: "https://vmeste.wildberries.ru/api/avia-service/twirp/aviaapijsonrpcv1.WebAviaService/GetCheap") else {return}
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    
    let session = URLSession.shared
    session.dataTask(with: url) { (data, response, error) in
        if let response = response {
            print(response)
        }
    }.resume()
}
