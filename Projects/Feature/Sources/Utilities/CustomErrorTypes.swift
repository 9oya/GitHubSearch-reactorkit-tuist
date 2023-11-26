//
//  CustomErrorTypes.swift
//  GitHubSearch-reactorkit-demo
//
//  Created by 9oya on 9/6/23.
//

import Foundation

public protocol CustomErrorProtocol: LocalizedError {

    var title: String? { get }
    var code: Int { get }
}

public struct CustomError: CustomErrorProtocol {

    public var title: String?
    public var code: Int
    public var errorDescription: String? { return _description }
    public var failureReason: String? { return _description }

    private var _description: String

    public init(title: String?, description: String, code: Int) {
        self.title = title ?? "Error"
        self._description = description
        self.code = code
    }
}
