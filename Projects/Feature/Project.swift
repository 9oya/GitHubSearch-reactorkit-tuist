//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 9oya on 10/5/23.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Feature",
    product: .staticFramework,
    dependencies: [
        .Project.Service,
        .Project.ThirdPartyLib
    ],
    resources: ["Resources/**"]
)
