//
//  BookmarkSection.swift
//  GitHubSearch-reactorkit-demo
//
//  Created by 9oya on 9/6/23.
//

import RxSwift
import RxDataSources
import Differentiator

public struct BookmarkSection {
    public var header: String
    public var items: [Item]
}

extension BookmarkSection: SectionModelType {
    public typealias Item = CellConfigType
    
    public init(original: BookmarkSection, items: [Item]) {
        self = original
        self.items = items
    }
}
