//
//  Dependency+SPM.swift
//  ProjectDescriptionHelpers
//
//  Created by 9oya on 10/5/23.
//

import ProjectDescription

public extension TargetDependency {
    enum SPM {}
}

public extension Package {
    static let Rx: Package = .remote(url: "https://github.com/ReactiveX/RxSwift.git",
                                     requirement: .upToNextMajor(from: "6.5.0"))
    static let RxDataSources: Package = .remote(url: "https://github.com/RxSwiftCommunity/RxDataSources.git",
                                                requirement: .upToNextMajor(from: "5.0.0"))
    static let ReactorKit: Package = .remote(url: "https://github.com/ReactorKit/ReactorKit.git",
                                             requirement: .upToNextMajor(from: "3.2.0"))
    static let Alamofire: Package = .remote(url: "https://github.com/Alamofire/Alamofire.git",
                                            requirement: .upToNextMajor(from: "5.0.0"))
    static let Kingfisher: Package = .remote(url: "https://github.com/onevcat/Kingfisher.git",
                                             requirement: .upToNextMajor(from: "7.3.0"))
    static let SnapKit: Package = .remote(url: "https://github.com/SnapKit/SnapKit",
                                          requirement: .upToNextMajor(from: "5.6.0"))
    static let RxFlow: Package = .remote(url: "https://github.com/RxSwiftCommunity/RxFlow.git",
                                         requirement: .upToNextMajor(from: "2.13.0"))
    static let Factory: Package = .remote(url: "https://github.com/hmlongco/Factory.git",
                                          requirement: .upToNextMajor(from: "2.2.0"))
}

public extension TargetDependency.SPM {
    static let RxSwift: TargetDependency = .package(product: "RxSwift")
    static let RxCocoa: TargetDependency = .package(product: "RxCocoa")
    static let RxCocoaDynamic: TargetDependency = .package(product: "RxCocoa-Dynamic")
    static let RxRelay: TargetDependency = .package(product: "RxRelay")
    static let RxTest: TargetDependency = .package(product: "RxTest")
    static let RxBlocking: TargetDependency = .package(product: "RxBlocking")
    static let RxBlockingDynamic: TargetDependency = .package(product: "RxBlocking-Dynamic")

    static let RxDataSources: TargetDependency = .package(product: "RxDataSources")
    static let ReactorKit: TargetDependency = .package(product: "ReactorKit")
    static let Alamofire: TargetDependency = .package(product: "Alamofire")
    static let Kingfisher: TargetDependency = .package(product: "Kingfisher")
    static let SnapKit: TargetDependency = .package(product: "SnapKit")
    static let RxFlow: TargetDependency = .package(product: "RxFlow")
    static let Factory: TargetDependency = .package(product: "Factory")
}
