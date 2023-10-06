//
//  TitleTbCellReactor.swift
//  GitHubSearch-reactorkit-demo
//
//  Created by 9oya on 9/25/23.
//

import UIKit
import RxSwift
import RxCocoa
import ReactorKit

public class TitleTbCellReactor: Reactor, CellConfigType {
    
    public enum Action {
        case initTitle
    }
    
    public enum Mutation {
        case setTitle(String)
    }
    
    public struct State {
        var title: String
    }
    
    public let initialState: State
    
    init(cellHeight: CGFloat,
         title: String) {
        self.initialState = State(title: title)
        self.cellHeight = cellHeight
    }
    
    public func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .initTitle:
            return .just(.setTitle(currentState.title))
            
        }
    }
    
    public func reduce(state: State, mutation: Mutation) -> State {
        var newState = state
        switch mutation {
        case let .setTitle(title):
            newState.title = title
        }
        return newState
    }
    
    // MARK: CellConfigProtocol
    
    public var cellIdentifier: String = String(describing: TitleTbCell.self)
    public var cellHeight: CGFloat
    
    public func configure(cell: UITableViewCell, with indexPath: IndexPath) -> UITableViewCell {
        if let cell = cell as? TitleTbCell {
            cell.reactor = self
            return cell
        }
        return UITableViewCell()
    }
    
    public func distinctIdentifier() -> String {
        """
        \(currentState.title)
        """
    }
}
