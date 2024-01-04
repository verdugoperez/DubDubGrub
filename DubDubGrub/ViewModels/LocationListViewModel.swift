//
//  LocationListViewModel.swift
//  DubDubGrub
//
//  Created by Manuel Alejandro Verdugo Pérez on 03/01/24.
//

import Foundation
@MainActor
class LocationListViewModel: ObservableObject {
    @Published var locations = [DDGLocation]()
    @Published var isLoading = false
    
    private var networkManager: NetworkRequestManager
    
    init(networkManager: NetworkRequestManager) {
        self.networkManager = networkManager
    }
    
    convenience init() {
        self.init(networkManager: NetworkRequestManager())
    }
    
    func getAppetizers() async {
        isLoading = true
        
        do {
            let url = URL(string: "http://demo6339055.mockable.io/ddglocations")!
            locations = try await networkManager.fetch(from: url, responseType: [DDGLocation].self).map { location in
                var locationWithId = location
                locationWithId.id = UUID()
                
                return locationWithId
            }
            
            isLoading = false
        } catch {
            isLoading = false
        }
    }
}
