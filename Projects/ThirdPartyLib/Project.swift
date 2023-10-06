//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 9oya on 10/5/23.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .framework,
    packages: [
        .Rx,
        .RxDataSources,
        .ReactorKit,
        .Alamofire,
        .Kingfisher,
        .SnapKit,
        .RxFlow,
        .Factory
    ],
    dependencies: [
        .SPM.RxSwift,
        .SPM.RxCocoa,
        .SPM.RxRelay,
        .SPM.RxDataSources,
        .SPM.ReactorKit,
        .SPM.Alamofire,
        .SPM.Kingfisher,
        .SPM.SnapKit,
        .SPM.RxFlow,
        .SPM.Factory
    ]
)
