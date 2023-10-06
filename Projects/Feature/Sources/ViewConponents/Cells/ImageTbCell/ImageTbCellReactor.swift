//
//  ImageTbCellReactor.swift
//  GitHubSearch-reactorkit-demo
//
//  Created by 9oya on 9/25/23.
//

import UIKit
import RxSwift
import RxCocoa
import ReactorKit
import Factory

public class ImageTbCellReactor: Reactor, CellConfigType {
    
    @Injected(\.imageService) var imageService
    
    public enum Action {
        case initImage
    }
    
    public enum Mutation {
        case setImage(UIImage)
    }
    
    public struct State {
        var image: UIImage?
        var avatarUrl: String
    }
    
    public let initialState: State
    
    public init(cellHeight: CGFloat,
         avatarUrl: String) {
        self.initialState = State(avatarUrl: avatarUrl)
        self.cellHeight = cellHeight
    }
    
    public func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .initImage:
            return imageService
                .downloadImage(with: currentState.avatarUrl)
                .flatMap(imageService.validateImage(_:))
                .asObservable()
                .map { .setImage($0) }
            
        }
    }
    
    public func reduce(state: State, mutation: Mutation) -> State {
        var newState = state
        switch mutation {
        case let .setImage(image):
            newState.image = image
        }
        return newState
    }
    
    // MARK: CellConfigProtocol
    
    public var cellIdentifier: String = String(describing: ImageTbCell.self)
    public var cellHeight: CGFloat
    
    public func configure(cell: UITableViewCell, with indexPath: IndexPath) -> UITableViewCell {
        if let cell = cell as? ImageTbCell {
            cell.reactor = self
            return cell
        }
        return UITableViewCell()
    }
    
    public func distinctIdentifier() -> String {
        """
        \(currentState.image?.description ?? "")
        \(currentState.avatarUrl)
        """
    }
}

extension ImageTbCellReactor {
}

