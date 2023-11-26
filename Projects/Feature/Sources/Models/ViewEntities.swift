//
//  ViewEntities.swift
//  GitHubSearch-reactorkit-demo
//
//  Created by 9oya on 9/27/23.
//

import Foundation

public struct SearchEntity {
    let title: String
    let placeHolder: String
    
    public init(title: String, placeHolder: String) {
        self.title = title
        self.placeHolder = placeHolder
    }
}

public struct DetailEntity {
    var login: String
    var avatarUrl: String
    
    public init(login: String, avatarUrl: String) {
        self.login = login
        self.avatarUrl = avatarUrl
    }
}
