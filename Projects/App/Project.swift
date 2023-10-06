//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 9oya on 10/5/23.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "GitHubSearch-reactorkit-demo",
    platform: .iOS,
    product: .app,
    dependencies: [
        .Project.Feature
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
